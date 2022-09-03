const DEV_URL = 'http://localhost:3000/';
const PROD_URL = 'https://[appointments-app-vintran].herokuapp.com/';
export const API_ROOT = process.env.NODE_ENV === 'development' ? DEV_URL : PROD_URL;