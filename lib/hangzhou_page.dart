import 'package:flutter/material.dart';

// 항저우 메인 페이지 / 杭州主页面
class HangzhouPage extends StatelessWidget {
  const HangzhouPage({super.key});

  // 관광지 데이터 목록 / 景点数据列表
  static const List<Map<String, dynamic>> attractions = [
    {
      'name': '서호 / 西湖',
      'nameZh': 'West Lake · 西湖',
      'rating': '4.9',
      'coverUrl': 'assets/images/xihu.jpg',
      'description':
      '서호(西湖)는 항저우 서쪽에 위치한 담수호로, 2011년 유네스코 세계문화유산에 등재되었습니다. '
          '호수 둘레는 약 15km이며, 소제(苏堤), 백제(白堤) 등 아름다운 제방이 있습니다.\n\n'
          '西湖位于杭州西部，是淡水湖，2011年被列入联合国教科文组织世界文化遗产。'
          '湖周长约15公里，有苏堤、白堤等美丽堤岸。',
      'highlights': ['소제춘효 / 苏堤春晓', '단교잔설 / 断桥残雪', '뇌봉석조 / 雷峰夕照', '평호추월 / 平湖秋月'],
      'food': '서호초어 / 西湖醋鱼',
      'foodDesc': '서호 근처 식당에서 즐길 수 있는 항저우 대표 요리 / 西湖附近餐厅可品尝的杭州代表菜',
      'tip': '봄(3~4월) 벚꽃 시즌이 가장 아름답습니다 / 春季(3~4月)樱花季节最为美丽',
    },
    {
      'name': '영은사 / 灵隐寺',
      'nameZh': 'Lingyin Temple · 灵隐寺',
      'rating': '4.8',
      'coverUrl': 'assets/images/lingyin.jpg',
      'description':
      '영은사(灵隐寺)는 동진 시대(326년)에 창건된 강남 최대 불교 사원입니다. '
          '천룡동굴, 비래봉 석각 등 볼거리가 풍부합니다.\n\n'
          '灵隐寺创建于东晋时期(326年)，是江南最大的佛教寺院之一。'
          '飞来峰石刻、天龙洞等景点丰富多彩。',
      'highlights': ['비래봉 석각 / 飞来峰石刻', '대웅보전 / 大雄宝殿', '천왕전 / 天王殿', '나한당 / 罗汉堂'],
      'food': '소채 요리 / 素斋',
      'foodDesc': '영은사 내 채식 전문 식당, 불교 전통 채식 요리 / 寺内素食餐厅，提供传统佛教素斋',
      'tip': '이른 아침 방문 시 조용한 분위기를 즐길 수 있습니다 / 清晨参观可感受宁静氛围',
    },
    {
      'name': '송성 경구 / 宋城景区',
      'nameZh': 'Songcheng · 宋城景区',
      'rating': '4.7',
      'coverUrl': 'assets/images/songcheng.jpg',
      'description':
      '송성(宋城)은 남송 시대 문화를 재현한 대형 테마파크입니다. '
          '《송성천고정(宋城千古情)》 공연은 중국에서 가장 오래 공연된 쇼로 유명합니다.\n\n'
          '宋城是再现南宋文化的大型主题公园。'
          '《宋城千古情》是中国演出时间最长的演艺秀，享誉全国。',
      'highlights': ['송성천고정 공연 / 宋城千古情演出', '송대 거리 / 宋代街市', '전통 공예 체험 / 传统工艺体验', '야경 / 夜景'],
      'food': '동파육 / 东坡肉',
      'foodDesc': '송성 내 전통 식당에서 소동파가 즐겨먹던 돼지고기 요리 / 景区内传统餐厅供应苏东坡最爱的红烧肉',
      'tip': '저녁 공연 시간에 맞춰 방문하는 것을 추천합니다 / 建议安排在傍晚观看演出',
    },
    {
      'name': '서계 습지 / 西溪湿地',
      'nameZh': 'Xixi Wetland · 西溪湿地',
      'rating': '4.6',
      'coverUrl': 'assets/images/xixi.jpg',
      'description':
      '서계 습지(西溪湿地)는 중국 최초의 국가 습지공원으로, 2009년 람사르 협약 습지로 등록되었습니다. '
          '갈대밭, 매화, 감나무 등 사계절 아름다운 자연을 감상할 수 있습니다.\n\n'
          '西溪湿地是中国第一个国家湿地公园，2009年被列入拉姆萨尔湿地名录。'
          '芦苇、梅花、柿树等四季景色各异，令人陶醉。',
      'highlights': ['갈대밭 / 芦苇荡', '매화섬 / 梅花岛', '작은 배 체험 / 摇橹船体验', '조류 관찰 / 观鸟'],
      'food': '농가 요리 / 农家菜',
      'foodDesc': '습지 내 수상 레스토랑에서 즐기는 신선한 민물 요리 / 湿地内水上餐厅供应新鲜河鲜',
      'tip': '11월 갈대 시즌이 가장 아름답습니다 / 11月芦苇季节景色最为壮观',
    },
    {
      'name': '뇌봉탑 / 雷峰塔',
      'nameZh': 'Leifeng Pagoda · 雷峰塔',
      'rating': '4.7',
      'coverUrl': 'assets/images/leifeng.jpg',
      'description':
      '뇌봉탑(雷峰塔)은 서호 남쪽 기슭에 위치한 오층탑으로, 977년에 처음 건립되었습니다. '
          '《백사전(白蛇传)》의 배경으로 유명하며, 석양 무렵의 풍경이 특히 아름답습니다.\n\n'
          '雷峰塔位于西湖南岸，是一座五层宝塔，始建于977年。'
          '以《白蛇传》故事背景而闻名，夕阳西下时景色尤为壮观。',
      'highlights': ['석양 전망 / 雷峰夕照', '백사전 전시 / 白蛇传展览', '지하 유물 / 地宫文物', '서호 파노라마 / 西湖全景'],
      'food': '룽징 새우 / 龙井虾仁',
      'foodDesc': '탑 근처 레스토랑에서 룽징차와 새우를 조합한 항저우 명물 요리 / 塔附近餐厅供应龙井茶与虾仁的经典搭配',
      'tip': '엘리베이터와 계단 모두 이용 가능합니다 / 可乘电梯或步行登塔',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7F4),
      body: CustomScrollView(
        slivers: [
          // 상단 서호 커버 이미지 / 顶部西湖封面图
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: const Color(0xFF1A6B4A),
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                '항저우 관광 / 杭州旅游',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 4)],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // 서호 풍경 사진 / 西湖风景照片
                  Image.asset(
                    'assets/images/xihu.jpg',
                    fit: BoxFit.cover,
                  ),
                  // 어두운 그라디언트 오버레이 / 深色渐变遮罩
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54],
                      ),
                    ),
                  ),
                  // 하단 부제목 / 底部副标题
                  const Positioned(
                    left: 16,
                    bottom: 56,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '上有天堂，下有苏杭',
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '하늘엔 천국, 땅엔 쑤저우·항저우',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 지역 소개 카드 / 地区介绍卡片
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: _IntroCard(),
            ),
          ),

          // 관광지 섹션 제목 / 景点区块标题
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A6B4A),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '대표 관광지 / 代表旅游景点',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A6B4A),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 관광지 카드 목록 / 景点卡片列表
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final attraction = attractions[index];
                  return _AttractionCard(
                    attraction: attraction,
                    onTap: () {
                      // 상세 페이지로 이동 / 跳转到详情页
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AttractionDetailPage(attraction: attraction),
                        ),
                      );
                    },
                  );
                },
                childCount: attractions.length,
              ),
            ),
          ),

          // 추천 여행 코스 섹션 제목 / 推荐旅行路线标题
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Row(
                children: [
                  Container(
                    width: 4, height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3A7BD5),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '추천 여행 코스 / 推荐旅行路线',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFF3A7BD5)),
                  ),
                ],
              ),
            ),
          ),

          // 여행 코스 카드 / 旅行路线卡片
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 8, offset: const Offset(0, 2))],
                ),
                child: Column(
                  children: const [
                    // 1일차 / 第一天
                    _RouteDay(
                      day: '1일차 / 第一天',
                      stops: [
                        '서호 경구 (소제·단교) / 西湖景区（苏堤·断桥）',
                        '뇌봉탑 / 雷峰塔',
                        '하방가 야시장 / 河坊街夜市',
                      ],
                    ),
                    SizedBox(height: 12),
                    // 2일차 / 第二天
                    _RouteDay(
                      day: '2일차 / 第二天',
                      stops: [
                        '영은사 / 灵隐寺',
                        '서계 습지 / 西溪湿地',
                        '룽징촌 차 체험 / 龙井村品茶',
                      ],
                    ),
                    SizedBox(height: 12),
                    // 3일차 / 第三天
                    _RouteDay(
                      day: '3일차 / 第三天',
                      stops: [
                        '송성 경구 / 宋城景区',
                        '첸탕강 / 钱塘江',
                        '알리바바 캠퍼스 / 阿里巴巴园区',
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // 경관별 추천 음식 섹션 제목 / 景点相关美食标题
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Row(
                children: [
                  Container(
                    width: 4, height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE07B39),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '경관별 추천 음식 / 景点相关美食',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFFE07B39)),
                  ),
                ],
              ),
            ),
          ),

          // 음식 카드 목록 / 美食卡片列表
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final food = _foodList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 6, offset: const Offset(0, 2))],
                    ),
                    child: Row(
                      children: [
                        // 컬러 배경 이모지 / 彩色背景emoji
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: _foodBgColor(food['bg']!),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(food['emoji']!, style: const TextStyle(fontSize: 26)),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                food['name']!,
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF8B4513)),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                food['desc']!,
                                style: const TextStyle(fontSize: 12, color: Color(0xFF666666), height: 1.4),
                              ),
                            ],
                          ),
                        ),
                        // 관련 경관 태그 / 相关景点标签
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE8F5EE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            food['spot']!,
                            style: const TextStyle(fontSize: 10, color: Color(0xFF1A6B4A)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: _foodList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 경관별 연관 음식 데이터 / 景点相关美食数据
  static const List<Map<String, String>> _foodList = [
    {
      'emoji': '🥘',
      'name': '서호초어 / 西湖醋鱼',
      'desc': '서호 근처 전통 식당의 대표 요리 / 西湖周边餐厅的代表菜',
      'spot': '서호 / 西湖',
      'bg': 'teal',
    },
    {
      'emoji': '🍖',
      'name': '동파육 / 东坡肉',
      'desc': '송성 내 전통 식당, 소동파의 즐겨먹던 요리 / 宋城餐厅，苏东坡最爱的红烧肉',
      'spot': '송성 / 宋城',
      'bg': 'red',
    },
    {
      'emoji': '🥬',
      'name': '소채 요리 / 素斋',
      'desc': '영은사 내 전통 불교 채식 요리 / 灵隐寺内传统佛教素食',
      'spot': '영은사 / 灵隐寺',
      'bg': 'green',
    },
    {
      'emoji': '🦐',
      'name': '룽징 새우 / 龙井虾仁',
      'desc': '뇌봉탑 근처, 룽징차와 새우의 조합 명물 / 雷峰塔附近，龙井茶与虾仁的经典搭配',
      'spot': '뇌봉탑 / 雷峰塔',
      'bg': 'orange',
    },
    {
      'emoji': '🐟',
      'name': '농가 민물 요리 / 农家河鲜',
      'desc': '서계 습지 수상 레스토랑의 신선한 민물 요리 / 西溪湿地水上餐厅的新鲜河鲜',
      'spot': '서계습지 / 西溪湿地',
      'bg': 'blue',
    },
  ];
}

// ─── 여행 코스 일차 컴포넌트 / 旅行路线天数组件 ──────────────────
class _RouteDay extends StatelessWidget {
  final String day;
  final List<String> stops;

  const _RouteDay({required this.day, required this.stops});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 일차 배지 / 天数徽章
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF3A7BD5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            day,
            style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 12),
        // 경유지 목록 / 停靠站列表
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < stops.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    children: [
                      Icon(
                        i == stops.length - 1 ? Icons.flag : Icons.arrow_forward,
                        size: 14,
                        color: const Color(0xFF3A7BD5),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          stops[i],
                          style: const TextStyle(fontSize: 12, color: Color(0xFF333333)),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

// ─── 지역 소개 카드 / 地区介绍卡片 ──────────────────────────────
class _IntroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 소개 헤더 / 介绍标题
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A6B4A).withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.location_city, color: Color(0xFF1A6B4A), size: 20),
              ),
              const SizedBox(width: 10),
              const Text(
                '고향 지역 소개 / 家乡地区介绍',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF1A6B4A)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(height: 1),
          const SizedBox(height: 12),
          // 소개 텍스트 (한중 병기) / 介绍文字（韩中双语）
          const Text(
            '항저우(杭州)는 중국 저장성 성도로 인구 약 1300만 명의 역사 도시입니다. '
                '서호(西湖)는 유네스코 세계문화유산으로 항저우의 상징입니다.\n\n'
                '杭州是中国浙江省省会，人口约1300万，是一座历史名城。'
                '西湖是联合国教科文组织世界文化遗产，是杭州的象征。',
            style: TextStyle(fontSize: 13, color: Color(0xFF444444), height: 1.7),
          ),
          const SizedBox(height: 14),
          // 3개 데이터 카드 / 3个数据卡片
          Row(
            children: const [
              Expanded(child: _StatChip(icon: Icons.people, value: '1300万', label: '인구 / 人口', color: Color(0xFF1A6B4A))),
              SizedBox(width: 8),
              Expanded(child: _StatChip(icon: Icons.history, value: '2200年', label: '역사 / 历史', color: Color(0xFF3A7BD5))),
              SizedBox(width: 8),
              Expanded(child: _StatChip(icon: Icons.public, value: '1处', label: '세계유산 / 世界遗产', color: Color(0xFFE07B39))),
            ],
          ),
        ],
      ),
    );
  }
}

// ─── 관광지 카드 (클릭 가능) / 景点卡片（可点击）────────────────
class _AttractionCard extends StatelessWidget {
  final Map<String, dynamic> attraction;
  final VoidCallback onTap;

  const _AttractionCard({required this.attraction, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 10, offset: const Offset(0, 3))],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 경관 이미지 / 景点图片
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                attraction['coverUrl'],
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 180,
                    color: const Color(0xFFE8F5EE),
                    child: const Center(
                      child: Icon(Icons.landscape, color: Color(0xFF1A6B4A), size: 60),
                    ),
                  );
                },
              ),
            ),
            // 카드 내용 / 卡片内容
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 경관명 + 평점 / 景点名称+评分
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            attraction['name'],
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A)),
                          ),
                          Row(
                            children: [
                              Text(
                                attraction['nameZh'],
                                style: const TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                              const SizedBox(width: 8),
                              // 별점 / 星级评分
                              const Icon(Icons.star, color: Color(0xFFFFC107), size: 13),
                              Text(
                                attraction['rating'],
                                style: const TextStyle(fontSize: 11, color: Color(0xFFFFC107), fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // 상세보기 버튼 / 查看详情按钮
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A6B4A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Text('상세보기 / 详情', style: TextStyle(color: Colors.white, fontSize: 11)),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // 짧은 설명 / 简短介绍
                  Text(
                    (attraction['description'] as String).split('\n\n')[0],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13, color: Color(0xFF666666), height: 1.5),
                  ),
                  const SizedBox(height: 10),
                  // 하이라이트 태그 / 亮点标签
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: (attraction['highlights'] as List<String>).map((h) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F5EE),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xFFB2DFCE)),
                      ),
                      child: Text(h, style: const TextStyle(fontSize: 11, color: Color(0xFF1A6B4A))),
                    )).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── 관광지 상세 페이지 / 景点详情页面 ──────────────────────────
class AttractionDetailPage extends StatelessWidget {
  final Map<String, dynamic> attraction;

  const AttractionDetailPage({super.key, required this.attraction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7F4),
      body: CustomScrollView(
        slivers: [
          // 상세 페이지 상단 이미지 / 详情页顶部图片
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: const Color(0xFF1A6B4A),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                attraction['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 4)],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // 경관 사진 / 景点照片
                  Image.asset(
                    attraction['coverUrl'],
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF0D4F35), Color(0xFF2E8B5E)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black45],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 영문·중문명 / 英文·中文名
                  Text(
                    attraction['nameZh'],
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(height: 16),

                  // 상세 설명 카드 / 详细介绍卡片
                  _DetailCard(
                    icon: Icons.info_outline,
                    title: '경관 소개 / 景点介绍',
                    child: Text(
                      attraction['description'],
                      style: const TextStyle(fontSize: 13, color: Color(0xFF444444), height: 1.7),
                    ),
                  ),
                  const SizedBox(height: 14),

                  // 주요 볼거리 카드 / 主要景点卡片
                  _DetailCard(
                    icon: Icons.star_outline,
                    title: '주요 볼거리 / 主要看点',
                    child: Column(
                      children: (attraction['highlights'] as List<String>).asMap().entries.map((entry) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1A6B4A),
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: Center(
                                  child: Text(
                                    '${entry.key + 1}',
                                    style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(entry.value, style: const TextStyle(fontSize: 13, color: Color(0xFF333333))),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 14),

                  // 관련 음식 카드 / 相关美食卡片
                  _DetailCard(
                    icon: Icons.restaurant,
                    title: '관련 음식 / 相关美食',
                    child: Row(
                      children: [
                        const Text('🍽️', style: TextStyle(fontSize: 24)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                attraction['food'],
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFFE07B39)),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                attraction['foodDesc'],
                                style: const TextStyle(fontSize: 12, color: Color(0xFF666666), height: 1.5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),

                  // 여행 팁 카드 / 旅行小贴士卡片
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8E1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFFFE082)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.lightbulb_outline, color: Color(0xFFF9A825), size: 20),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '여행 팁 / 旅行小贴士',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFFF9A825)),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                attraction['tip'],
                                style: const TextStyle(fontSize: 13, color: Color(0xFF555555), height: 1.5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── 음식 배경 컬러 헬퍼 / 美食背景颜色助手 ──────────────────────
Color _foodBgColor(String bg) {
  switch (bg) {
    case 'teal':   return const Color(0xFFE0F7F1);
    case 'red':    return const Color(0xFFFFEBEB);
    case 'green':  return const Color(0xFFEAF5E0);
    case 'orange': return const Color(0xFFFFF3E0);
    case 'blue':   return const Color(0xFFE3F0FF);
    default:       return const Color(0xFFF5F5F5);
  }
}

// ─── 통계 칩 컴포넌트 / 统计数据卡片组件 ────────────────────────
class _StatChip extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const _StatChip({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.25)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 18),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 10, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
class _DetailCard extends StatelessWidget {
  final IconData icon;
  final String title; // 한중 병기 / 韩中双语
  final Widget child;

  const _DetailCard({required this.icon, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 카드 헤더 / 卡片标题
          Row(
            children: [
              Icon(icon, color: const Color(0xFF1A6B4A), size: 18),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1A6B4A)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(height: 1),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}