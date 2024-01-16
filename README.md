# Initialize app

- install [brew](https://brew.sh)
- install php, composer though brew

```
composer create-project laravel/laravel app
cd app
npm install --save-dev vue @vitejs/plugin-vue
composer require inertiajs/inertia-larave
npm install @inertiajs/vue3
npm install --save-dev eslint eslint-plugin-vue
npm run fix:eslint
```

# Run app

```
docker-compose build
docker exec -it lara_vue_fundamental_app_1 bash
php artisan key:generate
```