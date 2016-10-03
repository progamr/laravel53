<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <form action="/avatars" method="POST" enctype="multipart/form-data">
        {{ csrf_field() }}
        <input type="file" name="avatar"/>
        <button type="submit">save avatar</button>
    </form>
    @foreach($users as $user)
        <li {{($loop->index = 2)? 'class="first"': ''}}>{{ $user->name  }}</li>
    @endforeach
    {{ $users->links() }}
</body>
</html>