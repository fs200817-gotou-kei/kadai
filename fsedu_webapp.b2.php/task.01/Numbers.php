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
    
  	print "<button class=\"start\" onclick='location.href=\"?page=1sperPage=$perPage\"'>最初</button>";
  }
  
  // 前のページへのリンク
  if ($page > 1) {
    print "<button class=\"back\"onclick='location.href=\"?page=$prev.sperPage=$perPage\"'>前 &raquo;</button>";
  }
  	
  //ページリンク表示ループ
  foreach ($nums as $num) {
    
    // 現在地
    if ($num === $page) {
      print '<button class="current">' . $num . '</button>';
    } else {
      // ページ番号リンク表示
      print "<button class=\"current1\" onclick='location.href=\"?page=$num sperPage=$perPage\"'>$num</button>";
    }
  }
	
  
  // 次のページへのリンク
  if ($page < $totalPage){
    print "<button class=\"next\" onclick='location.href=\"?page=$next sperPage=$perPage\"'>次へ &raquo;</button>";
  }
  
  //最後のページへのリンク
  if ($page < $totalPage){
  	print "<button class=\"last\" onclick='location.href=\"?page=$totalPage sperPage=$perPage\"'>最後</a>";
  } 
}