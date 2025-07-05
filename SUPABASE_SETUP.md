# Supabase Setup Guide

This project has been migrated from Firebase to Supabase. Follow these steps to complete the setup:

## 1. Create a Supabase Project

1. Go to [supabase.com](https://supabase.com) and create a new account or sign in
2. Create a new project
3. Note down your project URL and anon key

## 2. Configure Supabase Credentials

Update the Supabase configuration in `lib/core/supabase/supabase_config.dart`:

```dart
class SupabaseConfig {
  static const String supabaseUrl = 'YOUR_SUPABASE_PROJECT_URL';
  static const String supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';
}
```

## 3. Set up Database Tables

Run these SQL commands in your Supabase SQL editor:

### Users Table
```sql
CREATE TABLE users (
  uid UUID PRIMARY KEY,
  email TEXT NOT NULL,
  role TEXT,
  profile_completed BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE users ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Users can view their own data" ON users
  FOR SELECT USING (auth.uid() = uid);

CREATE POLICY "Users can update their own data" ON users
  FOR UPDATE USING (auth.uid() = uid);

CREATE POLICY "Users can insert their own data" ON users
  FOR INSERT WITH CHECK (auth.uid() = uid);
```

### Artists Table
```sql
CREATE TABLE artists (
  user_id UUID NOT NULL,
  artist_id UUID PRIMARY KEY,
  stage_name TEXT NOT NULL,
  location TEXT NOT NULL,
  biography TEXT NOT NULL,
  genre TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  social_links TEXT[] DEFAULT '{}',
  profile_images TEXT[] DEFAULT '{}',
  supporter_count INTEGER DEFAULT 0,
  profile_picture_url TEXT,
  
  -- Foreign key constraint
  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(uid) ON DELETE CASCADE
);

-- Enable Row Level Security
ALTER TABLE artists ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Artists can view all artists" ON artists
  FOR SELECT USING (true);

CREATE POLICY "Artists can update their own data" ON artists
  FOR UPDATE USING (auth.uid() = user_id);

CREATE POLICY "Artists can insert their own data" ON artists
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Artists can delete their own data" ON artists
  FOR DELETE USING (auth.uid() = user_id);
```

## 4. Set up Storage Bucket

1. Go to Storage in your Supabase dashboard
2. Create a new bucket called `artist-profiles`
3. Set the bucket to public
4. Create a policy for the bucket:

```sql
CREATE POLICY "Public access to artist profiles" ON storage.objects
  FOR SELECT USING (bucket_id = 'artist-profiles');

CREATE POLICY "Authenticated users can upload profile images" ON storage.objects
  FOR INSERT WITH CHECK (bucket_id = 'artist-profiles' AND auth.role() = 'authenticated');

CREATE POLICY "Users can update their own profile images" ON storage.objects
  FOR UPDATE USING (bucket_id = 'artist-profiles' AND auth.uid()::text = (storage.foldername(name))[1]);

CREATE POLICY "Users can delete their own profile images" ON storage.objects
  FOR DELETE USING (bucket_id = 'artist-profiles' AND auth.uid()::text = (storage.foldername(name))[1]);
```

## 5. Configure Authentication

1. Go to Authentication > Settings in your Supabase dashboard
2. Configure your site URL and redirect URLs
3. Enable email authentication
4. Optionally configure email templates

### Site URL Configuration
- Site URL: `http://localhost:3000` (for development)
- Redirect URLs: 
  - `io.supabase.nextone://login-callback/`
  - `http://localhost:3000/auth/callback`

## 6. Test the Setup

1. Run the app: `flutter run`
2. Test user registration and login
3. Verify that user data is being saved to Supabase
4. Test profile picture uploads

## 7. Environment Variables (Optional)

For production, consider using environment variables:

```dart
class SupabaseConfig {
  static const String supabaseUrl = String.fromEnvironment('SUPABASE_URL');
  static const String supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');
}
```

Then run your app with:
```bash
flutter run --dart-define=SUPABASE_URL=your_url --dart-define=SUPABASE_ANON_KEY=your_key
```

## Migration Notes

- The app now uses Supabase Auth instead of Firebase Auth
- User data is stored in Supabase PostgreSQL instead of Firestore
- File uploads use Supabase Storage instead of Firebase Storage
- All authentication flows remain the same from a user perspective
- The code structure and BLoC pattern remain unchanged
- Column names in the database use snake_case (e.g., `created_at`, `profile_completed`)
- Dart field names use camelCase (e.g., `createdAt`, `profileCompleted`)
- JsonKey annotations map between the two naming conventions

## Troubleshooting

### Common Issues:

1. **Column not found errors**: Make sure your database table schema matches the expected column names
2. **Authentication issues**: Check your Supabase project settings and redirect URLs
3. **Storage upload failures**: Verify your bucket policies are correctly configured
4. **RLS (Row Level Security) errors**: Ensure your policies allow the operations you're trying to perform

### Debugging Tips:

1. Check the Supabase dashboard logs for detailed error messages
2. Use the Supabase client's built-in logging: `Supabase.instance.client.auth.onAuthStateChange.listen((data) => print(data))`
3. Verify your table schemas in the Supabase dashboard under Database > Tables

## Next Steps

After setting up the database:
1. Test user registration and login
2. Test role selection and profile completion
3. Test artist profile creation and updates
4. Test profile picture uploads
5. Deploy to production with proper environment variables 