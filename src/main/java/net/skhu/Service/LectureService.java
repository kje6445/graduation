package net.skhu.Service;

import net.skhu.domain.Pagination;
import org.springframework.stereotype.Service;
import net.skhu.domain.Lecture;
import net.skhu.mapper.LectureMapper;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.List;

@Service
public class LectureService{
    @Autowired
    LectureMapper lectureMapper;

    static String[] target = {"year, semester, l.id, title, subType, credit"};

    /* 검색해서 리스트 조회*/
    public List<Lecture> srchByLecList(int currentPage,int pageSize,int choice,String srch) {
        return lectureMapper.findLecBySrch(currentPage,pageSize,choice,srch);
    }

    /* 그냥 finAll*/
    public List<Lecture> lectureList(Pagination pagination){
        return lectureMapper.findAll(pagination);
    }

    public Lecture findLecture(int year,String semester,String lectureId,int adminId){

        return lectureMapper.findLecture(year,semester,lectureId,adminId);
    }


    public int pageSrchCount(int choice, String srch){
        return lectureMapper.srchCount(choice,srch);
    }

    public int pageCount(){
        return lectureMapper.count();
    }

    public void lecInsert(Lecture lecture){
        lectureMapper.insert(lecture);
    }

    public void lecUpdate(Lecture lecture){
        lectureMapper.update(lecture);
    }

    public String[] selectCheck(int choice)
    {
        if (choice == 0)
            return new String[]{"","","","","",""};
        else if (choice == 1)
            return new String[]{"","selected","","","",""};
        else if(choice == 2)
            return new String[]{"","","selected","",""};
        else if(choice == 3)
            return new String[]{"","","","selected","",""};
        else if(choice == 4)
            return new String[]{"","","","","selected",""};
        else
            return new String[]{"","","","","","selected"};
    }

}