<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Whatsapp</title>

    <script type="text/javascript" src="view/javascript/jquery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>
    <link href="view/stylesheet/bootstrap.css" type="text/css" rel="stylesheet">
    <link href="view/javascript/jquery/scrollbar/jquery.scrollbar.css" rel="stylesheet" media="screen">
    <script src="view/javascript/jquery/scrollbar/jquery.scrollbar.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="view/javascript/whatsapp.js"></script>
    <link href="view/stylesheet/whatsapp.css" type="text/css" rel="stylesheet">

</head>
<body class="h-100">

<input type="hidden" id="token" value="<?php echo $token; ?>">
<div class="col-sm-12 h-100 whatsapp">
    <div class="row h-100">
        <div class="col-sm-3 flex f-column h-100 brr">
            <a class="back-link" href="<?php echo $back; ?>"><?php echo $text_back; ?></a>
            <input class="hidden form-control" type="text" name="search">
            <div class="h-100 row scrollbar-inner" data="chats">
                <?php foreach($chats as $chat){ ?>
                    <div class="chat flex" data-chat_id="<?php echo $chat['chat_id']; ?>">
                        <img src="<?php echo $chat['image']; ?>">
                        <div class="chat-info flex f-column">
                            <div class="flex"><?php echo $chat['name']; ?><span class="pull-right"><?php echo $chat['date_added']; ?></span></div>
                            <div><?php echo $chat['last_message']; ?></div>
                        </div>
                    </div>
                <?php } ?>
            </div>

        </div>
        <div class="col-sm-9 messages-body flex f-column h-100 ">
            <div class="scrollbar-inner flex f-column" data="messages">

            </div>
            <div class="message-form flex f-ai">
                <textarea type="text" class="form-control message-input" placeholder="<?php echo $text_message; ?>"></textarea>
                <button type="button" id="submit"></button>
            </div>
        </div>
    </div>
</div>
<script>
ws.time = <?php echo $time; ?>;
</script>
</body>
</html>