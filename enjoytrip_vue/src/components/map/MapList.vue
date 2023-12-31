<script setup>
import { ref, onMounted } from "vue";
// import { useRouter } from "vue-router";
import { listAttraction, searchAttraction, listSido, listGugun } from "@/api/attraction";
import VKakaoMap from "@/components/common/VKakaoMap.vue";
import MapListItem from "@/components/map/item/MapListItem.vue";


const attractionData = ref([]);
const sidoData = ref([]);
const gugunData = ref([]);

const selected = ref({
  contentId: '',
  mapX: '',
  mapY: '',
  title: '',
  firstImage: '',
  addr: '',
  detail: '',
});

onMounted(() => {
  getAttractionList();
  getSidoList();
  param.value.area = "0";
  param.value.area2 = "0";
  param.value.type = "0";
});

const getAttractionList = () => {
  // API 호출
  listAttraction(
    ({ data }) => {
      data.forEach(element => {
        attractionData.value.push({
          id: element.contentId,
          title: element.title,
          content: element.addr1,
          mapY: element.latitude,
          mapX: element.longitude,
          img: element.firstImage,
          detail: element.attractionDescriptionDto.overview,
        });

      });
    },
    (error) => {
      console.log(error);
    }
  );
};

const param = ref({
  area: "",
  area2: "",
  type: "",
  keyword: "",
});

const getSearchAttractionList = () => {
  searchAttraction(
    param.value,
    ({ data }) => {
      attractionData.value = [];
      data.forEach(element => {
        attractionData.value.push({
          id: element.contentId,
          title: element.title,
          content: element.addr1,
          mapY: element.latitude,
          mapX: element.longitude,
          img: element.firstImage,
          detail: element.attractionDescriptionDto.overview,
        });
      });
    },
    (error) => {
      console.log(error);
    }
  );
}

const getSidoList = () => {
  // API 호출
  listSido(
    ({ data }) => {
      data.forEach(element => {
        sidoData.value.push({
          sidoCode: element.sidoCode,
          sidoName: element.sidoName,
        });

      });
    },
    (error) => {
      console.log(error);
    }
  );
};

const getGugunList = () => {
  // API 호출
  listGugun(
    param.value,
    ({ data }) => {
      data.forEach(element => {
        gugunData.value.push({
          gugunCode: element.gugunCode,
          gugunName: element.gugunName,
          sidoCode: element.sidoCode,
        });

      });
      param.value.area2 = "0";
    },
    (error) => {
      console.log(error);
    }
  );
};

const onSidoChange = () => {
  // 시/도 선택이 변경되었을 때 호출되는 메서드
  gugunData.value = [];
  if (param.value.area !== "0") {
    // 시/도 선택이 유효한 경우에만 구/군 목록 가져오기
    gugunData.value = [];
    getGugunList(param.value.area);
  }
};

const viewMarker = (data) => {
  selected.value = data;
};

</script>

<template>
  <div>
    <h2>관광지 검색</h2>
    <br>
    <div class="row">
      <div class="col-lg-6 mb-3">
        <VKakaoMap :data="attractionData" :selected="selected" />
      </div>
      <div class="col-lg-6">
        <form class="d-flex my-3" @submit.prevent="searchAttraction" role="search" action="/map">
          <input type="hidden" name="action" value="mapSearch" />
          <select id="search-area" class="form-select me-2" name="area" v-model="param.area" @change="onSidoChange">
            <option value="0" selected>시/도 선택</option>
            <option v-for="sido in sidoData" :key="sido.sidoCode" :value="sido.sidoCode">{{ sido.sidoName }}</option>
          </select>

          <select id="search-area2" class="form-select me-2" name="area2" v-model="param.area2">
            <option value="0" selected>구/군 선택</option>
            <option v-for="gugun in gugunData" :key="gugun.gugunCode" :value="gugun.gugunCode">{{ gugun.gugunName }}
            </option>
          </select>

          <select id="search-content-id" class="form-select me-2" name="type" v-model="param.type">
            <option value="0" selected>관광지 유형</option>
            <option value="12">관광지</option>
            <option value="14">문화시설</option>
            <option value="15">축제공연행사</option>
            <option value="25">여행코스</option>
            <option value="28">레포츠</option>
            <option value="32">숙박</option>
            <option value="38">쇼핑</option>
            <option value="39">음식점</option>
          </select>
          <input id="search-keyword" class="form-control me-2" type="search" placeholder="검색어" aria-label="검색어"
            name="keyword" v-model="param.keyword" />
          <button type="button" class="btn btn-outline-secondary ms-1" @click="getSearchAttractionList">검색</button>
        </form>
        <div class="map-list-item">
          <table class="table table-hover table-fixed">
            <thead>
              <tr class="text-center">
                <th scope="col"></th>
                <th scope="col">즐겨찾기</th>
                <th scope="col">정보</th>
                <th scope="col">상세페이지</th>
              </tr>
            </thead>
            <tbody>
              <MapListItem class="text-center" v-for="list in attractionData" :key="list.contentId" :attraction="list"
                @click="viewMarker(list)"></MapListItem>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.map-list-item {
  max-height: 600px;
  overflow-y: auto;
}

.map-list-item::-webkit-scrollbar {
  display: none;
}

.table-fixed thead {
  width: 100%;
  position: sticky;
  top: 0;
  background-color: white;
}

.table-fixed tbody td {
  width: 25%;
  box-sizing: border-box;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
</style>