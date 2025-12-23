import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
             input: ['../installer/css/style.css'],
            refresh: true,
        }),
    ],
});
