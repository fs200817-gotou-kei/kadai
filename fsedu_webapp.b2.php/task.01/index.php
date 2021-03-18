<style>
h1{text-align: center;
   font-size: 20px;
   color:#fff;
   background:black}


.chage{background-color: #3399FF;
       border: none;
       color: #fff;}

table{text-align: center;}
table{
  border-collapse: collapse;
  text-align: left;
}
td, th{
  width: 300;
}
th, td{
  font-size: 5px;
}

table td{
  background-color: #eee;
}

table tr:nth-child(odd) td{
  background-color: #fff;
}

th, td{
  border-width: 1px 0px;
  border-style: solid;
  border-color: #DDDDDD;
}
</style>

<h1>PHP:FStest11 社員一覧</h1>

<?php

include "./Numbers.php";

function createDate() {

  $mysqli = new mysqli('localhost', 'root', '', 'db_name');
  if ($mysqli->connect_error) {
      echo $mysqli->connect_error;
      exit();
  } else {
      $mysqli->set_charset("utf8");
  }
  
  // ここにDB処理いろいろ書く（後述）
  $sql = "SELECT * FROM allEmployees e, allPostal p WHERE e.ID = p.employeeNumber;";

  if ($result = $mysqli->query($sql)) {
    // 連想配列を取得
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $result->close();
  }
  
  // DB接続を閉じる
  $mysqli->close();

  return $data;
}

$items = createDate(); //ダミーデータ
$count = count($items); // データの総数
$eperPage = array(1,2,3,4,5,6,7,8,9,10);

$page = empty($_GET['page']) ? 1 : (int) $_GET['page']; // 現在のページ

if(isset($_POST['eperPage'])){
  $perPage = (int)$_POST['eperPage'];
}

if(empty($perPage)){
  $uri = rtrim($_SERVER["REQUEST_URI"]);
  preg_match('/sperPage=(\w+)/', $uri, $f);

  if(empty($f)){
    $perPage = 2;
  }else{
    $perPage = (int)$f[1];
  }
}

$totalPage = ceil($count / $perPage); // 最大ページ数

echo ($perPage * $page) + (-1 * $perPage) + (+1) . '～' . min($perPage * $page, $count) .'件を表示/全' . min($perPage * $totalPage, $count) . '件中';
echo '<br>';
echo '表示件数';
echo '<br>';                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
?>

<form method='POST' action='index.php?'>
<select name='eperPage'>
<?php
  foreach($eperPage as $page1 => $value){
    echo "<option value={$value}>{$value}</option>";

  }

?>
</select>
<input class = "chage" type='submit' value='変更'/>
</form>

<?php
// ページ番号でデータにフィルタかける
function filterData($page, $perPage, $data) {

  return array_filter($data, function($i) use ($page, $perPage) {
    
    return $i >= ($page - 1) * $perPage && $i < $page * $perPage;

  }, ARRAY_FILTER_USE_KEY);
}

//filterDataで中身がなくなっている
$filterData = filterData($page, $perPage, $items);

//filterは配列の要素番号をそのまま返すから抜き出し元が2ならそのまま2が使われる

echo "<table>";
echo "<tr><th>社員番号</th>
      <th>名前</th>
      <th>カナ</th>
      <th>郵便番号</th>
      <th>住所</th></tr>";
foreach($filterData as $data){  
  echo "<tr><td>$data[ID]</td>
  <td>$data[firstName] $data[lastName]</td>
  <td>$data[firstNameKana] $data[lastNameKana]</td>
  <td>$data[postalNumber]</td>
  <td>$data[location]</td></tr>"
  ;
}
echo "</table>";
?>

<div>
<?php paging2($totalPage, $page, $perPage); ?>
</div>