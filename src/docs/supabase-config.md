# Supabase configs

The supabase has been already configured for you, all you have to do is to add your own supabase url and key in the `.env` file.
And start importing `supabase` from `@/lib/supabase.js` in your project.

> Note: The lib folder here, should contain any configs related to libraries such as supabase, axios, etc.

## How to use

```js
import { supabase } from '@/lib/supabase'

// Example
const { data, error } = await supabase
  .from('users')
  .select('*')
  .eq('id', 1)
```