--�չ���ϰ
--create by lizhi
--2005-9-10 15:52
--�չ�������ͷ�ļ�
--created by lizhi
--2005-9-11 11:50
--˵�����������ʹ�������1700��1701��1702����¼��ҽ�������֮ǰ�����ꣻ1703�����Ƿ�ش�ʱ
--������ʹ�������400��414


Include("\\script\\class\\ktabfile.lua");

--�Ƿ�������
IsAskQuestion = 0;

--��ʱ������
TIME_RANDOM_QUESTION = 410;
TIME_PRACTICE = 411;
TIME_ANSWER = 412;

LEAVE_MAP = 413;    --rect������
LEAVE_GAME = 414;   --log������

--�������������������3�����ֱ��¼����
TASK_PRACTICE = 1700;
TASK_ANSWER = 1703; --�����Ƿ񳬹�ʱ�䣬��ʱʹ��
SKILLENABLE = 1906;		--�Ƿ��ܹ�ʹ���书������̨ʹ����ͬ���������

NORMAL_SPEED = 0;   --��ͨ�����ٶ�
DOUBLE_SPEED = 1;   --һ���ٶ�����(Ϊԭ����2��)

ANSWER_TIME = 60;   --�ش������ʱ��Ϊ60��
--���ɶ�Ӧ��rect������
--GetPlayerFaction()
--����  1
--�䵱  2
--����  3
--ؤ��  4
--����  5
--����	6
--�嶾	7
rect_trigger_table = {
    {1500, 400},
    {1501, 400},
    {1502, 400},
    {1503, 400},
    {1504, 400},
    {1505, 400},
    {1506, 400}
};

--�������ɵ�ʦ������
--����˳�����֣��䵱�����ң�ؤ����ţ����ţ��嶾
cards_table = {
    {2, 0, 205},
    {2, 0, 206},
    {2, 0, 207},
    {2, 0, 208},
    {2, 0, 209},
    {2, 0, 350},
    {2, 0, 390},
};

--���ɶ�Ӧ��������ͼ
--˳����Ϊ���֣��䵱�����ң�ؤ����ţ����ţ��嶾
room_table = {
    {814, 1623, 3164},
    {812, 1608, 3219},
    {816, 1623, 3164},
    {815, 1360, 3136},
    {813, 1686, 2994},
    {817, 1457, 2972},
    {422, 1628,	3508},
};

--��¼����ı���
QT_FILE = new(KTabFile, "\\settings\\task\\question_table.txt");
--��ͷ�������ƣ�
QT_TYPE = {
    ["QuestionID"] = 1,
    ["Question"] = 2,
    ["CorrectAnswer"] = 3,
    ["Answer2"] = 4,
    ["Answer3"] = 5,
    ["Answer4"] = 6,
    ["AwardPopurMin"] = 7,
    ["AwardPopurMax"] = 8,
    ["AwardMoney"] = 9
};
--��������
QT_ROWCOUNT = tonumber(QT_FILE:getRow());