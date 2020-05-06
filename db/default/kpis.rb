# frozen_string_literal: true

kpis = [
    {
        name: 'Cumplimiento de objetivo de ventas',
        calculators: [
            {
                index: 1,
                frontend_class: 'SalesAccomplishment',
                points: 20,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                position: 1,
                total_columns: 6
            },
            {
                index: 2,
                frontend_class: 'SalesAccomplishment',
                points: 10,
                starts_on: '2020-02-01',
                ends_on: nil,
                score_type: nil,
                objective: { 'numeric' => nil, 'percentage' => nil },
                position: 1,
                total_columns: 6
            }
        ]
    },
    {
        name: 'Cumplimiento de Wholesale',
        calculators: [
            {
                index: 1,
                frontend_class: 'WholesaleAccomplishment',
                points: 15,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                position: 2,
                total_columns: 3
            },
            {
                index: 2,
                frontend_class: 'WholesaleAccomplishment',
                points: 10,
                starts_on: '2020-02-01',
                ends_on: nil,
                score_type: nil,
                objective: { 'numeric' => nil, 'percentage' => nil },
                position: 2,
                total_columns: 3
            }
        ]
    },
    {
        name: 'Promedio de Ritmo de Ventas al Día 10 - 20 & 25',
        calculators: [
            {
                index: 1,
                frontend_class: 'AverageRateOfSales',
                points: 7,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => 100 },
                position: 3,
                total_columns: 2
            },
            {
                index: 2,
                frontend_class: 'AverageRateOfSales',
                points: 5,
                starts_on: '2020-02-01',
                ends_on: nil,
                score_type: nil,
                objective: { 'numeric' => nil, 'percentage' => '100' },
                position: 5,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Antigüedad del Inventario',
        calculators: [
            {
                index: 1,
                frontend_class: 'AntiquenessStocktaking',
                points: 5,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => 4 },
                position: 4,
                total_columns: 2
            },
            {
                index: 2,
                frontend_class: 'AntiquenessStocktaking',
                points: 5,
                starts_on: '2020-02-01',
                ends_on: nil,
                score_type: nil,
                objective: { 'numeric' => nil, 'percentage' => '4' },
                position: 8,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Market Share',
        calculators: [
            {
                index: 1,
                frontend_class: 'MarketShare',
                points: 7,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                position: 5,
                total_columns: 3
            }
        ]

    },
    {
        name: 'Hyundai Protect',
        calculators: [
            {
                index: 1,
                frontend_class: 'HyundaiProtect',
                points: 7,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => 67 },
                position: 6,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Share de Financiamiento',
        calculators: [
            {
                index: 1,
                frontend_class: 'FinanceShare',
                points: 5,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => 57 },
                position: 7,
                total_columns: 2
            }
        ]
    },
    {
        name: '123 Leasing',
        calculators: [
            {
                index: 1,
                frontend_class: 'Leasing123',
                points: 2,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => 3 },
                position: 8,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Balloon Payment',
        calculators: [
            {
                index: 1,
                frontend_class: 'BallonPayment',
                points: 2,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => 3 },
                position: 9,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Satisfacción de clientes ventas SSI',
        calculators: [
            {
                index: 1,
                frontend_class: 'CustomerSatisfactionSalesSSI',
                points: 8,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => 90, 'percentage' => nil },
                position: 10,
                total_columns: 2
            },
            {
                index: 2,
                frontend_class: 'CustomerSatisfactionSalesSSI',
                points: 10,
                starts_on: '2020-02-01',
                ends_on: nil,
                score_type: nil,
                objective: { 'numeric' => '92', 'percentage' => nil },
                position: 3,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Satisfacción de clientes Postventa CSI',
        calculators: [
            {
                index: 1,
                frontend_class: 'CustomerSatisfactionPostSaleCSI',
                points: 8,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => 92, 'percentage' => nil },
                position: 11,
                total_columns: 2
            },
            {
                index: 2,
                frontend_class: 'CustomerSatisfactionPostSaleCSI',
                points: 5,
                starts_on: '2020-02-01',
                ends_on: nil,
                score_type: nil,
                objective: { 'numeric' => 92, 'percentage' => nil },
                position: 13,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Entregado a tiempo contra promesa',
        calculators: [
            {
                index: 1,
                frontend_class: 'DeliveredOnTimeAgainstPromise',
                points: 4,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => 91, 'percentage' => nil },
                position: 12,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Cumplimiento de objetivos en P&A (Wholesale)',
        calculators: [
            {
                index: 1,
                frontend_class: 'ObjectiveAchievementPA',
                points: 10,
                starts_on: '2019-01-01',
                objective: { 'numeric' => 100, 'percentage' => nil },
                position: 9,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Hyundai Contigo',
        calculators: [
            {
                index: 1,
                frontend_class: 'HyundaiWithYou',
                points: 2,
                starts_on: '2019-01-01',
                objective: { 'numeric' => 5, 'percentage' => nil },
                position: 17,
                total_columns: 2
            }
        ]
    },
    {
        name: 'CPO',
        calculators: [
            {
                index: 1,
                frontend_class: 'CPO',
                points: 2,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                objective: { 'numeric' => 5, 'percentage' => nil },
                position: 18,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Tráfico de piso',
        calculators: [
            {
                index: 1,
                frontend_class: 'Research',
                points: 0,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                position: 19,
                total_columns: 1
            }
        ]
    },
    {
        name: 'Mystery Shopper',
        calculators: [
            {
                index: 1,
                frontend_class: 'MysteryShopper',
                points: 0,
                starts_on: '2019-01-01',
                ends_on: '2020-02-01',
                position: 20,
                total_columns: 1
            }
        ]
    },
    {
        name: 'Eficiencia de marca',
        calculators: [
            {
                index: 1,
                frontend_class: 'BrandEfficiency',
                points: 5,
                starts_on: '2020-02-01',
                objective: { 'numeric' => 100, 'percentage': nil },
                position: 4,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Cumplimiento de objetivo de Gi10',
        calculators: [
            {
                index: 1,
                frontend_class: 'ObjectiveGiAccomplishment',
                points: 5,
                starts_on: '2020-02-01',
                position: 6,
                total_columns: 3
            }
        ]
    },
    {
        name: 'Cumplimiento de objetivo creta',
        calculators: [
            {
                index: 1,
                frontend_class: 'CretaPerformanceSales',
                points: 5,
                starts_on: '2020-02-01',
                position: 7,
                total_columns: 3
            }
        ]
    },
    {
        name: 'Transición de datos DMS-HMM',
        calculators: [
            {
                index: 1,
                frontend_class: 'DataTransition',
                points: 5,
                starts_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => '100' },
                position: 12,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Atributos de satisfacción',
        calculators: [
            {
                index: 1,
                frontend_class: 'SatisfactionAttributes',
                points: 5,
                starts_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => '100' },
                position: 10,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Porcentaje de digitalización del proceso de servicio',
        calculators: [
            {
                index: 1,
                frontend_class: 'DigitalizationPercentage',
                points: 5,
                starts_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => '75' },
                position: 11,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Entrenamiento de ventas',
        calculators: [
            {
                index: 1,
                frontend_class: 'SalesTraining',
                points: 5,
                starts_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => '90' },
                position: 14,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Productos financieros',
        calculators: [
            {
                index: 1,
                frontend_class: 'FinancialProducts',
                points: 5,
                starts_on: '2020-02-01',
                objective: { 'numeric' => 100, 'percentage': nil },
                position: 16,
                total_columns: 2
            }
        ]
    },
    {
        name: 'Smart sales care',
        calculators: [
            {
                index: 1,
                frontend_class: 'SmartSalesCare',
                points: 5,
                starts_on: '2020-02-01',
                objective: { 'numeric' => nil, 'percentage' => '60' },
                position: 15,
                total_columns: 2
            }
        ]
    }
]

kpis.each do |kpi|
  k = Kpi.find_or_create_by!(name: kpi[:name])
  kpi[:calculators].each do |calculator|
    k.calculators.where(index: nil).update(index: 1)

    new_calculator = k.calculators.find_or_initialize_by(index: calculator[:index])
    new_calculator.attributes = calculator
    new_calculator.save
  end
end
