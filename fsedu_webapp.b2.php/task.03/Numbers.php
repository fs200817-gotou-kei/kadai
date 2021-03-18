<style>
.current{
  background-color: white;
  color: gray;
}
.current1{
  background-color: gray;
  color: white;
}
.start, .next, .last, .back{
  color: black;
  background-color: #DDDDDD;
}

</style>
<?php
/**
 * ページ番号リンクの表示
 *
 * 
 * @param int $totalPage データの最大件数
 * @param int $page 現在のページ番号
 * @param int $pageRange $pageから前後何件のページ番号を表示するか
 */
function paging2($totalPage, $page, $perPage, $pageRange = 50){

  // ページ番号
  $page = (int) htmlspecialchars($page);
  $perPage = (int) htmlspecialchars($perPage);
  
  // 前ページと次ページの番号計算
  $prev = max($page - 1, 1);
  $next = min($page + 1, $totalPage);
  
  $nums = []; // ページ番号格納用
  $start = max($page - $pageRange, 1); // ページ番号始点

  // ページ番号格納

  for ($i = $start; $i <= $totalPage; $i++) {
    $nums[] = $i;
  }
  
  //最初のページへのリンク
  if ($page > 1 && $page !== 1){
    //print '<a href="?page=1sperPage='.$perPage. ' title="最初">最初</a>';
    
  	print "<button class=\"start\" onclick='location.href=\"read.php?page=1\"'>最初</button>";
  }
  
  // 前のページへのリンク
  if ($page > 1) {
    print "<button class=\"back\"onclick='location.href=\"read.php?page=$prev\"'>前 &raquo;</button>";
  }
  	
  //ページリンク表示ループ
  foreach ($nums as $num) {
    
    // 現在地
    if ($num === $page) {
      print '<button class="current">' . $num . '</button>';
    } else {
      // ページ番号リンク表示
      print "<button class=\"current1\" onclick='location.href=\"read.php?page=$num\"'>$num</button>";
    }
  }
	
  
  // 次のページへのリンク
  if ($page < $totalPage){
    print "<button class=\"next\" onclick='location.href=\"read.php?page=$next\"'>次へ &raquo;</button>";
  }
  
  //最後のページへのリンク
  if ($page < $totalPage){
  	print "<button class=\"last\" onclick='location.href=\"read.php?page=$totalPage\"'>最後</a>";
  } 
}