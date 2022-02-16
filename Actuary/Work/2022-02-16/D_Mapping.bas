Attribute VB_Name = "D_Mapping"
Sub Mapping()

    Call D_CovInfoMapping      '<--- �㺸���� mapping
    Call D_QxMapping            '<--- Ex, Bx, Gx �迭 mapping

End Sub

Sub D_CovInfoMapping()
' ���� : coverageKey(�㺸Ű), ����(sex), ���Գ���(x), ����Ⱓ(n)�� �̸� ����
' ���� : Ż����,�޺���, ������, �޺ΰ���, �δ㺸, ���޷�, ���׷�, ���ױⰣ, ��ȿ�����Ⱓ �� ����

    Call Set_NumBenefit
    Call Set_QxKey
    Call Set_NonCov
    Call Set_PayRate
    Call Set_ReduceRate
    Call Set_ReducePeriod
    Call Set_InvalidPeriod
    Call Set_UseCombRate
    Call Set_UseSingleRate
    
End Sub


Sub D_QxMapping()

    ' ---------  �ʱ�ȭ  --------- '
    Erase Ex, Bx, Gx

    ' ---------  Ż���� (Ex)  --------- '
    For NN = 0 To NumBenefit
        If ExKey(NN) <> "" Then         ' �����Ű�� ������ pass
            For tt = x To x + n
                Ex(NN, tt) = QxDict(ExKey(NN))(tt)
            Next tt
        End If
    Next NN
    

    ' ---------  �޺��� (Bx)  --------- '
    For NN = 1 To NumBenefit
        ' ���� handling
        'If BxKey(NN) = "" Then
        '    Dim msg As String
        '    msg = "ERR : " & CoverageKey & " �㺸" & BNum & "�� �޺ο��� �޺����� �ȵ���"
        '    MsgBox msg
        '    Exit Sub
        'End If
    
        For tt = x To x + n
            Bx(NN, tt) = QxDict(BxKey(NN))(tt)
        Next tt
    Next NN

    ' ---------  ������ (Gx)  --------- '
    If GxKey <> "" Then
        For tt = x To x + n
            Gx(tt) = QxDict(GxKey)(tt)
        Next tt
    End If

End Sub

