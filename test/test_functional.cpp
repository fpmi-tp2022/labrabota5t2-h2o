
#include <gtest/gtest.h>
#include <sqlite3.h>
#include <string>

extern "C" {
#include<functional.h>
}

TEST(h2o_testing, testOpen) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    sqlite3_close(db);
}

TEST(h2o_testing, testInsert) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    std::string sql = "INSERT INTO PARK_DRIVERS VALUES (7, 'KERRIGAN', '1', '1000', 'Mirror', '2017' );";
    char* s_data = sql.data();
    EXPECT_NO_THROW(insert_data(db, s_data));
    sql = "SELECT driver_id FROM park_drivers WHERE driver_id = 7;";
    s_data = sql.data();
    int selected = select_data(db, s_data);
    EXPECT_EQ(selected, 1);
    sqlite3_close(db);
}

TEST(h2o_testing, testDelete) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    std::string sql = "DELETE FROM park_drivers WHERE driver_id = 7;";
    char* s_data = sql.data();
    EXPECT_NO_THROW(insert_data(db, s_data));
    sql = "SELECT driver_id FROM park_drivers WHERE driver_id = 7;";
    s_data = sql.data();
    int selected = select_data(db, s_data);
    EXPECT_EQ(selected, 0);
    sqlite3_close(db);
}

TEST(h2o_testing, testSelectByDrivers) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    std::string driver = "Lohnesskiy";
    char* s_data = driver.data();
    int selected = select_by_driver(db, s_data);
    EXPECT_EQ(selected, 0);
    sqlite3_close(db);
}

TEST(h2o_testing, testSelectByCar) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    std::string driver = "Lohnesskiy", car = "1";
    char* s_data = driver.data(), *c_data = car.data();
    int selected = select_by_car(db, c_data, s_data);
    EXPECT_EQ(selected, 0);
    sqlite3_close(db);
}

TEST(h2o_testing, testSelectByEachDriver) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    std::string driver = "Lohnesskiy";
    char* s_data = driver.data();
    int selected = select_by_each_driver(db, s_data);
    EXPECT_EQ(selected, 0);
    sqlite3_close(db);
}

TEST(h2o_testing, testMinDriver) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    int selected = select_by_min_driver(db);
    EXPECT_EQ(selected, 8);
    sqlite3_close(db);
}

TEST(h2o_testing, testCheckOrder) {
    sqlite3 *db = open_data_base();
    EXPECT_NE(db, nullptr);
    std::string car_num = "1";
    char* s_data = const_cast<char*>(car_num.data());
    int order = check_order(db, 1000, s_data);
    EXPECT_EQ(order, 0);
    sqlite3_close(db);
}
