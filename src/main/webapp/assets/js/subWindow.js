function openWin(src,titleName) {
  $('#winTitle').text(titleName);
  $('#winFrame').attr("src",src);
  $('#subwindow').modal();
  }