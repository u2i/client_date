function client_strftime(y,m,d,hr,mn,s,format) {
  gmtDate = new Date(Date.UTC(y,m-1,d,hr,mn,s));

  document.write(gmtDate.strftime(format));
}
