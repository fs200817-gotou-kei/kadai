<style>

form{
    
    height: 700;
    width: 100%;
    padding: 0;
    margin: 0;
    background-color: #d4dae2;
}



    h1{
        text-align: center;
    }
p{
    margin-left: 450;
}

text{
    width :480;
}

input[type=submit]{
    background-color: #1E90FF;
    color: white
}




.sent {
  display: block;
  position: relative;
  margin: 1em 0;
 
  cursor: pointer;
  user-select: none; /* テキストの選択を防ぐ */
}
.sent input {
  display: none;
}

/* □ */
.selectsent {
  position: absolute;
  top: 0; /* 上からの位置 */
  left: 175;
  height: 22px; /* 大きさ */
  width: 22px; /* 大きさ */
  border: solid 2px #d4dae2; /* 線 */
  border-radius: 4px;
  box-sizing: border-box;
}
/* ✓ */
.selectsent:after {
  content: "";
  position: absolute;
  left: 5px; /* チェックの位置 */
  top: 1px; /* チェックの位置 */
  width: 6px; /* チェックの大きさ */
  height: 10px; /* チェックの大きさ */
  border: solid #FFF;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
  opacity: 0; /* 透明にしておく */
}

/* チェックが入ったときの□ */
.sent input:checked + .selectsent {
  background: #2e80ff; /* チェック時の色 */
  border-color: #2e80ff; /* チェック時の色 */
}

/* チェックが入ったときの✓ */
.sent input:checked + .selectsent:after {
  opacity: 1; /* 透明を解除 */
}





.selectgender {
    display: inline-block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 15px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* デフォルトのラジオボタンデザインを無効化 */
.selectgender input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* カスタムラジオボタンの作成 */
.gender {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
}

/* マウスオーバーのリアクション */
.selectgender:hover input ~ .gender {
    background-color: #ccc;
}


/* チェックした時のカラーリング */
.selectgender input:checked ~ .gender {
    background: #2e80ff; /* チェック時の色 */
    border-color: #2e80ff; /* チェック時の色 */
}


.gender:after {
    content: "";
    position: absolute;
    display: none;
}

.selectgender input:checked ~ .gender:after {
    display: block;
}

.selectgender .gender:after {
    top: 9px;
    left: 9px;
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: white;
}


input[type="text"]{
    width: 600;
    height: 40;
}
input[name="opinion"]{
    height: 100;
}

.send{
    
    text-align: center;
}
input[name="send"]{
    width: 100;
}

</style>


<form action="confirm.blade.php"
method="post">

<h1>システムへのご意見をお聞かせください</h1>

<p>氏名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"name="name" placeholder="入力してください" value=""></p>

<p>性別&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="selectgender">
    <input type="radio" name="gender"><span class="gender"></span>男性</label>
    <label class="selectgender">
    <input type="radio" name="gender"><span class="gender"></span>女性</label></p>

<p>年代&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"name="age" placeholder="選択してください" value=""></p>

<p>メールアドレス&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
name="emailaddress" placeholder="入力してください" value=""></p><br>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登録したメールアドレスにメールマガジンをお送りしてもよろしいですか？</p>
<p><label class="sent">メール送信可否&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox">送信を許可します<span class="selectsent"></span></label></p>

<p>ご意見&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
name="opinion" placeholder="入力してください" value=""></p>

<div class="send"><input type="submit"
name="send" value="確認"></div>
</form>

