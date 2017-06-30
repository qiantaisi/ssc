package project38.api.utils;

import org.apache.commons.lang3.time.DateFormatUtils;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/**
 * Created by Administrator on 2016/6/23.
 */
public class DateUtils {
    public static Date getTodayStart() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return calendar.getTime();
    }

    public static Date getTodayEnd() {
        Date date = getTodayStart();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, 1);
        // calendar.add(Calendar.SECOND, -1);

        return calendar.getTime();
    }

    public static Date getYesterdayStart() {
        Date date = getTodayStart();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, -1);
        return calendar.getTime();
    }

    public static Date getYesterdayEnd() {
        Date date = getTodayEnd();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, -1);
        // calendar.add(Calendar.SECOND, -1);

        return calendar.getTime();
    }

    public static Date getWeekStart() {
        Calendar calendar = Calendar.getInstance();
        int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayOfWeek == 0) {
            dayOfWeek = 7;
        }
        calendar.add(Calendar.DAY_OF_WEEK, 1 - dayOfWeek);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return calendar.getTime();
    }

    public static Date getWeekEnd() {
        Calendar calendar = Calendar.getInstance();
        int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayOfWeek == 0) {
            dayOfWeek = 7;
        }
        calendar.add(Calendar.DAY_OF_WEEK, 7 - dayOfWeek + 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        // calendar.add(Calendar.SECOND, -1);

        return calendar.getTime();
    }

    public static Date getLastWeekStart() {
        Date date = getWeekStart();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, -7);

        return calendar.getTime();
    }

    public static Date getLastWeekEnd() {
        Date date = getWeekEnd();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, -7);
        // calendar.add(Calendar.SECOND, -1);

        return calendar.getTime();
    }

    public static Date getMonthStart() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return calendar.getTime();
    }

    public static Date getMonthEnd() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        calendar.add(Calendar.DAY_OF_MONTH, 1);
        // calendar.add(Calendar.SECOND, -1);

        return calendar.getTime();
    }

    public static Date getLastMonthStart() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.MONTH, -1);
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return calendar.getTime();
    }

    public static Date getLastMonthEnd() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.MONTH, -1);
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        calendar.add(Calendar.DAY_OF_MONTH, 1);
        // calendar.add(Calendar.SECOND, -1);

        return calendar.getTime();
    }

    public static Calendar getMeidongCalendar() {
        Calendar calendar = getBeijingCalendar();
        calendar.add(Calendar.HOUR_OF_DAY, -12);
        return calendar;
    }

    public static Calendar getBeijingCalendar() {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+8"));
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar;
    }

    public static void main(String[] args) throws ParseException {
        Date endTime = org.apache.commons.lang3.time.DateUtils.parseDate("2017-05-22 2:4:1", "yyyy-MM-dd HH:mm:ss");
        Date startTime = org.apache.commons.lang3.time.DateUtils.parseDate("2017-01-22 2:4:1", "yyyy-MM-dd HH:mm:ss");
        System.out.println(DateFormatUtils.format(getMinArchiveDateTime(startTime, endTime), "yyyy-MM-dd HH:mm:ss"));
    }

    private static Date getMinArchiveDateTime(Date dateTime) throws ParseException {
        Date archiveStartTime = org.apache.commons.lang3.time.DateUtils.parseDate("2016-01-01 00:00:00","yyyy-MM-dd HH:mm:ss");
        Date archiveEndTime = getBeijingCalendar().getTime();

        if (null == dateTime || dateTime.getTime() < archiveStartTime.getTime() || dateTime.getTime() > archiveEndTime.getTime()) {
            return archiveStartTime;
        }
        return dateTime;
    }

    public static Date getMaxArchiveDateTime(Date dateTime) throws ParseException {
        Date archiveStartTime = org.apache.commons.lang3.time.DateUtils.parseDate("2016-01-01 00:00:00","yyyy-MM-dd HH:mm:ss");
        Date archiveEndTime = getTodayEnd();

        if (null == dateTime || dateTime.getTime() < archiveStartTime.getTime() || dateTime.getTime() > archiveEndTime.getTime()) {
            return archiveEndTime;
        }
        return dateTime;
    }

    /**
     * 根据endTime获取startTime，间隔不超过60天
     * @param startTime
     * @param endTime
     * @return
     * @throws ParseException
     */
    public static Date getMinArchiveDateTime(Date startTime, Date endTime) throws ParseException {
        Date minTime = getMinArchiveDateTime(startTime);
        Date maxTime = getMaxArchiveDateTime(endTime);

        Long betweenDays = (maxTime.getTime() - minTime.getTime()) / (24 * 3600 * 1000);
        // 间隔超过60天
        if (betweenDays > 60) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(maxTime);
            calendar.add(Calendar.DAY_OF_MONTH, -60);
            minTime = calendar.getTime();
        }

        return minTime;
    }
}
