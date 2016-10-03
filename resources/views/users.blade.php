<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>user list</title>
    <link rel="stylesheet" href="/css/app.css"/>
    <style>body{padding: 10em;}</style>
</head>
<body>
    @foreach($users as $user)
        <li>{{ $user->name  }}</li>
    @endforeach
    {{$users->links()}}
</body>
</html>