Attribute VB_Name = "A_Declare"
Option Explicit

' ----------  Global ������ �����ϴ� �κ�  ----------
    
    Public QxDict As Object
    Public CovDict As Object
    
    Public x As Integer                           ' ���Կ���
    Public n As Long                              ' ����Ⱓ
    Public m As Long                              ' ���ԱⰣ
    Public mPrime As Long                         ' �����ֱ�
    
    
    ' ����� ������
    Public sex As Integer          ' ����
    Public Injure As Integer       ' ���ر޼�
    Public Driver As Integer       ' �����ڱ޼�
    Public FirstJoinAge As Long    ' ���ʰ��Կ���
    Public Lawyer As Integer       ' ��ȣ�� �޼�
    Public Grade As Integer        ' ���Ǳ޼�
    
    
    ' �����Ű
    Public ExCode(10), BxCode(1 To 10), GxCode As String
    Public ExType(10), BxType(1 To 10), GxType As String
    Public ExKey(10), BxKey(1 To 10), GxKey As String
    
    
    ' �����
    Public Ex(10, 120) As Double
    Public Bx(1 To 10, 120) As Double
    Public Gx(120) As Double
    
    ' etc
    Public l0 As Long                           ' ����ʱ� �����ڼ�
    Public AMT As Long                          ' ���Աݾ�
    Public sep As String
    
    ' Interst
    Public exp_i As Double                        ' ��������
    Public exp_v As Double
    
    ' Expense
    Public alpha1 As Double
    Public alpha3 As Double
    Public beta1 As Double
    Public beta2 As Double
    Public gamma As Double
    Public ce As Double
    
    ' �㺸����
    Public CoverageKey As String                    ' �㺸Ű
    Public NumBenefit As Integer                    ' �޺ΰ���
    Public MakeCombRiskRate As Boolean              ' �����������������
    Public UseSingleRate As Boolean                 ' ���Ϸ����뿩��
    Public NonCov(10) As Integer                    ' �δ㺸�Ⱓ
    Public PayRate(1 To 10) As Double               ' ���޷�
    Public ReducePeriod(1 To 10) As Integer         ' ���ױⰣ
    Public ReduceRate(1 To 10) As Double            ' ���׷�
    Public InvalidPeriod As Integer                 ' ��ȿ�����Ⱓ
          
          
    ' �����
    Public lxPrime(120) As Double                   ' �����ڼ�
    Public lx(10, 120) As Double                    ' �����ڼ�
    Public DxPrime(120) As Double
    Public Dx(120) As Double
    Public NxPrime(120) As Double
    Public Nx(120) As Double
    Public Cx(1 To 10, 120) As Double
    Public Mx(1 To 10, 120) As Double
    Public SUMx(120) As Double
    
    ' �����
    
        ' �������
        Public NP_annual_full As Double
        Public NP_month_full As Double
        
        Public NP_annual_round As Long
        Public NP_month_round As Long
    
        '���������
        Public G_annual_full As Double
        Public G_month_full As Double
        
        Public G_annual_round As Long
        Public G_month_round As Long
    
        
    ' �غ��, ȯ�ޱ�
    Public tVx_full(120) As Double
    Public tWx_full(120) As Double
    Public tVx_round(120) As Long
    Public tWx_round(120) As Long
    
    ' ǥ�ؾ���, �������
    Public alpha_std As Double
    Public alpha_apply As Double
    Public S As Double
    

    
