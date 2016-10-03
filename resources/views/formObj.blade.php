<html>
<head>
    <meta charset="UTF-8">
    <title>whip monstrous code</title>
</head>
<body>
    <form method="post" action="/posts">
        {!! csrf_field() !!}
        <textarea name="body"></textarea>
        <button type="submit">Add Post</button>
    </form>
</body>
</html>