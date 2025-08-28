lib/
├── main.dart
├── app/
│   ├── app_router.dart           # Sayfalar arası yönlendirme
│   ├── app_theme.dart            # Tema ve stil
│   └── constants/                # Sabitler (color, string, api endpoints)
│
├── core/                        # Uygulama genelinde kullanılan ortak kodlar
│   ├── utils/                   # Yardımcı fonksiyonlar
│   ├── network/                 # API istemcisi, network servisler
│   ├── errors/                  # Hata yönetimi
│   └── widgets/                 # Reusable widgetlar
│
├── features/                    # Uygulama özellikleri (modüller)
│   └── feature_name/
│       ├── data/
│       │   ├── models/          # JSON modelleri / DTO
│       │   ├── repositories/    # Repositoryler
│       │   └── datasources/     # API ve lokal veri kaynakları
│       │
│       ├── domain/
│       │   ├── entities/        # İş mantığı için entityler
│       │   ├── usecases/        # Feature özel use case fonksiyonları
│       │
│       ├── presentation/
│       │   ├── bloc/            # Cubit / Bloc dosyaları
│       │   │   ├── feature_cubit.dart
│       │   │   └── feature_state.dart
│       │   ├── views/           # Ekranlar
│       │   │   └── feature_page.dart
│       │   └── widgets/         # Feature’a özel widgetlar
│       │
│       └── feature_module.dart  # Feature bağımlılıklarını bağlayan injector
│
└── injection_container.dart    # App-wide dependency injection (get_it gibi)
