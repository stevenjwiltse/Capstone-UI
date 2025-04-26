import { defineConfig } from '@hey-api/openapi-ts';

const inputUrl = process.env.NODE_ENV === 'production'
  ? 'http://3.138.51.64:8000/openapi.json'
  : 'http://localhost:8000/openapi.json';

export default defineConfig({
  input: inputUrl,
  output: 'src/api',
  plugins: [
    '@hey-api/client-fetch'
  ],
});
