<div class="row justify-content-center">
    <div class="d-flex justify-content-center" style="flex-wrap: wrap;" id="articleslist">
        <div class="d-flex justify-content-center align-items-center" style="height:calc(100vh - 72px)">
            <i class="fa fa-spinner fa-pulse fa-3x fa-fw text-dark"></i>
        </div>
    </div>
</div>
<script>
    function imageErr(image) {
        image.onerror = "";
        image.src =  "<?= $env['link'] ?>/assets/img/no_image.png";
        return true;
    }
const MAX = 250;
$.ajax({
    type: "post",
    dataType: "json",
    url: "<?= $env["link"] ?>api/getArticles.php",
    success: function(data) {
        if (data.success) {
            var storage = "<?= $env['storage'] ?>";
            $("#articleslist").html("");
            data.data.forEach(function(dt) {
                if(dt.ACTIVE == 1)
                {
                    var ll = 'article/'+dt.ID_ARTICLE;
                    var link = "<?= route('"+ll+"')?>";
                    var title = dt.TITRE_ARTICLE;
                    var content = dt.CONTENU_ARTICLE;
                    if (content.length > MAX) {
                        content = content.substr(0, MAX) + " ...";
                    }
                    var imglink = storage + dt.IMG_ARTICLE;
                    var apnd = "<div class='card col-12 col-md-4 col-lg-3 p-0 m-2'> <img style='height: 255px;' onerror='imageErr(this)' src='" +
                        imglink + "' class='card-img-top' alt='" + title +
                        "'> <div class='card-body col-12'><h5 class='card-title'>" + title +
                        "</h5> <p class='card-text text-justify'>" + content + "</p> <a href='" + link +
                        "' class='btn btn-primary'>Voir plus</a> </div></div>";
                    $("#articleslist").append(apnd);
                }

            });
        }
    }
})
</script>