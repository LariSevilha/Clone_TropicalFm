document.addEventListener("turbolinks:load", function() {
    $(document).ready(function() {
        function createSlick(id) {
          //albums
          var modal = $(".album__modal--container").slick({
              adaptiveHeight: true,
              appendArrows: $(".album__arrows"),
              arrows: true,
              autoplay: false,
              dots: false,
              nextArrow: '<div class="album__arrow album__arrow--next"></div>',
              prevArrow: '<div class="album__arrow album__arrow--prev"></div>',
              singleItem: true,
              speed: 1000
          });

          modal[0].slick.slickGoTo(id, true);

          $(document).keydown(function(key) {
              switch(key.which) {
                //esc
                case 27:
                  openModal();
                break;

                //left
                case 37:
                  modal[0].slick.slickPrev();
                  key.preventDefault();
                break;

                //right
                case 39:
                  modal[0].slick.slickNext();
                  key.preventDefault();
                break;

                default: return;
              }
          });
        }

        function destroySlick() {
          $(".album__modal--container")[0].slick.unslick();
        }

        function openModal(clickEvent) {
          var documentWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
          var documentHeight = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);

          var albumModalImages = $(".album__modal--image");

          if (documentWidth < 768) {
            if (documentWidth >= documentHeight) {
              for (var i=0; i < albumModalImages.length; i++) {
                $(".album__modal--image")[i].style.maxWidth = "70%";
                $(".album__modal--image")[i].style.maxHeight = "100%";
              }
            } else {
              for (var i=0; i < albumModalImages.length; i++) {
                $(".album__modal--image")[i].style.maxWidth = "100%";
                $(".album__modal--image")[i].style.maxHeight = "100%";
              }
            }
          }

          if (clickEvent != null || clickEvent != undefined) {
            clickEvent.stopPropagation();
          }

          //reset albumModalItems events
          $(".album__modal--item").prop("onclick", null).off("click");
          $(".album__modal--item").on("click", function(event){
            if(event.target != this) return;
            openModal(event);
          });

          //reset albumModalFigures events
          $(".album__modal--figure").prop("onclick", null).off("click");
          $(".album__modal--figure").on("click", function(event){
            if(event.target != this) return;
            openModal(event);
          });

          //reset closeButtons events
          $(".album__modal--close").prop("onclick", null).off("click");
          $(".album__modal--close").on("click", openModal);

          //reset keydown events
          $(document).off("keydown");

          var albumModal = $(".album__modal");

          if ($.inArray("album__modal--opened", albumModal[0].classList) === 1) {
            destroySlick();
            albumModal.removeClass("album__modal--opened");
          } else {
            albumModal.addClass("album__modal--opened");
            createSlick(parseInt(clickEvent.currentTarget.id));
          }
        }

        var images = $(".album__item");

        images.on("click", openModal);
    });
});