define({ "api": [
  {
    "type": "post",
    "url": "/member/addUserBank.json",
    "title": "添加用户银行卡",
    "name": "addUserBank",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "bankName",
            "description": "<p>银行名称</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "subBankName",
            "description": "<p>支行名称</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "bankAccount",
            "description": "<p>账号</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "userName",
            "description": "<p>姓名</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/checkOnline.json",
    "title": "检查用户在线",
    "name": "checkOnline",
    "group": "Member",
    "version": "1.0.0",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/editUserInfo.json",
    "title": "编辑用户信息",
    "name": "editUserInfo",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "nickname",
            "description": "<p>昵称</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "birthday",
            "description": "<p>生日</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "qq",
            "description": "<p>QQ</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "telephone",
            "description": "<p>手机</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "email",
            "description": "<p>邮箱</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getBindStatus.json",
    "title": "获取用户绑定状态，手机，银行卡，邮箱",
    "name": "getBindStatus",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isBindEmail",
            "description": "<p>是否绑定邮箱</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isBindTelephone",
            "description": "<p>是否绑定手机号</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isBindBankcard",
            "description": "<p>是否绑定银行卡</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getDepositChannel.json",
    "title": "获取存款渠道",
    "name": "getDepositChannel",
    "group": "Member",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "depositChannelList",
            "description": "<p>存款渠道列表</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "depositChannelList.id",
            "description": "<p>存款渠道编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "depositChannelList.name",
            "description": "<p>存款渠道名称</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"depositChannelList\":[{\"id\":1,\"name\":\"在线银行\"},{\"id\":2,\"name\":\"手机银行\"},{\"id\":3,\"name\":\"柜台转账\"},{\"id\":4,\"name\":\"ATM现金转账\"}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getDepositList.json",
    "title": "获取用户存款记录",
    "name": "getDepositList",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "startTime",
            "description": "<p>开始时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "endTime",
            "description": "<p>结束时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageIndex",
            "description": "<p>第几页</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页数量</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "status",
            "description": "<p>状态</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "depositChannelId",
            "description": "<p>存款渠道</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageNum",
            "description": "<p>当前页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "size",
            "description": "<p>当前页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "long",
            "optional": false,
            "field": "total",
            "description": "<p>总数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "firstPage",
            "description": "<p>第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "prePage",
            "description": "<p>前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "nextPage",
            "description": "<p>下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "lastPage",
            "description": "<p>最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isFirstPage",
            "description": "<p>是否为第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isLastPage",
            "description": "<p>是否为最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasPreviousPage",
            "description": "<p>是否有前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasNextPage",
            "description": "<p>是否有下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "navigatePages",
            "description": "<p>导航页码数</p>"
          },
          {
            "group": "Success 200",
            "type": "int[]",
            "optional": false,
            "field": "navigatepageNums",
            "description": "<p>所有导航页号</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "logUserDepositList",
            "description": "<p>数据</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "logUserDepositList.orderNo",
            "description": "<p>存款编码</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "logUserDepositList.createTime",
            "description": "<p>申请时间</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "logUserDepositList.depositChannelId",
            "description": "<p>存款渠道编码</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "logUserDepositList.money",
            "description": "<p>存款金额</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "logUserDepositList.remarks",
            "description": "<p>备注</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "logUserDepositList.status",
            "description": "<p>状态编码</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":1,\"total\":1,\"firstPage\":1,\"prePage\":0,\"nextPage\":0,\"lastPage\":1,\"hasPreviousPage\":false,\"hasNextPage\":false,\"navigatePages\":8,\"navigatepageNums\":[1],\"logUserDepositList\":[{\"orderNo\":\"20161029143053488334\",\"createTime\":1477722600000,\"depositChannelId\":6,\"money\":1.11,\"remarks\":null,\"status\":1}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getSafeInfo.json",
    "title": "获得安全信息",
    "name": "getSafeInfo",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "thisLoginTime",
            "description": "<p>最后登录时间</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "lastLoginTime",
            "description": "<p>上一次登录时间</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "thisLoginIp",
            "description": "<p>最后登录IP</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "lastLoginIp",
            "description": "<p>上次登录IP</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "thisLoginCity",
            "description": "<p>最后登录地点</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "lastLoginCity",
            "description": "<p>上次登录地点</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "registerTime",
            "description": "<p>注册时间</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "registerIp",
            "description": "<p>注册IP</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"thisLoginTime\":1478837921000,\"lastLoginTime\":1478682768000,\"thisLoginIp\":\"192.168.146.1\",\"lastLoginIp\":\"192.168.146.1\",\"thisLoginCity\":\"未知国家\",\"lastLoginCity\":\"未知国家\",\"registerTime\":1476258356000,\"registerIp\":\"192.168.146.1\"}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getSscBetsList.json",
    "title": "获取用户彩票投注记录",
    "name": "getSscBetsList",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "startTime",
            "description": "<p>开始时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "endTime",
            "description": "<p>结束时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageIndex",
            "description": "<p>第几页</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页数量</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageNum",
            "description": "<p>当前页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "size",
            "description": "<p>当前页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "long",
            "optional": false,
            "field": "total",
            "description": "<p>总数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "firstPage",
            "description": "<p>第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "prePage",
            "description": "<p>前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "nextPage",
            "description": "<p>下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "lastPage",
            "description": "<p>最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isFirstPage",
            "description": "<p>是否为第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isLastPage",
            "description": "<p>是否为最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasPreviousPage",
            "description": "<p>是否有前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasNextPage",
            "description": "<p>是否有下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "navigatePages",
            "description": "<p>导航页码数</p>"
          },
          {
            "group": "Success 200",
            "type": "int[]",
            "optional": false,
            "field": "navigatepageNums",
            "description": "<p>所有导航页号</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "sscBetsList",
            "description": "<p>数据</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscBetsList.playId",
            "description": "<p>玩法编码</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "sscBetsList.createTime",
            "description": "<p>创建时间</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "sscBetsList.playPl",
            "description": "<p>玩法赔率</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "sscBetsList.totalMoney",
            "description": "<p>投注金额</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "sscBetsList.status",
            "description": "<p>状态</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscBetsList.zhushu",
            "description": "<p>注数</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "sscBetsList.perMoney",
            "description": "<p>单注金额</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "sscBetsList.winOrLose",
            "description": "<p>输赢</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscBetsList.content",
            "description": "<p>下注内容</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscBetsList.number",
            "description": "<p>期号</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscBetsList.playGroupId",
            "description": "<p>彩种</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscBetsList.orderNumber",
            "description": "<p>注单号</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "sscBetsList.zjMoney",
            "description": "<p>中奖金额</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":25,\"total\":27,\"firstPage\":1,\"prePage\":0,\"nextPage\":2,\"lastPage\":2,\"hasPreviousPage\":false,\"hasNextPage\":true,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"sscBetsList\":[{\"playId\":216,\"createTime\":1478864112000,\"playPl\":6826.000,\"totalMoney\":12.000,\"status\":0,\"zhushu\":1,\"perMoney\":12.000,\"winOrLose\":null,\"content\":\"百位-单\",\"number\":\"20161111082\",\"playGroupId\":1,\"orderNumber\":\"2016111119351222308591\",\"zjMoney\":0.000},{\"playId\":216,\"createTime\":1478864112000,\"playPl\":6830.000,\"totalMoney\":12.000,\"status\":0,\"zhushu\":1,\"perMoney\":12.000,\"winOrLose\":null,\"content\":\"十位-大\",\"number\":\"20161111082\",\"playGroupId\":1,\"orderNumber\":\"2016111119351222908592\",\"zjMoney\":0.000},{\"playId\":216,\"createTime\":1478864112000,\"playPl\":6832.000,\"totalMoney\":12.000,\"status\":0,\"zhushu\":1,\"perMoney\":12.000,\"winOrLose\":null,\"content\":\"十位-单\",\"number\":\"20161111082\",\"playGroupId\":1,\"orderNumber\":\"2016111119351237508593\",\"zjMoney\":0.000},{\"playId\":216,\"createTime\":1478864072000,\"playPl\":6824.000,\"totalMoney\":21.000,\"status\":0,\"zhushu\":1,\"perMoney\":21.000,\"winOrLose\":null,\"content\":\"百位-大\",\"number\":\"20161111082\",\"playGroupId\":1,\"orderNumber\":\"2016111119343228208589\",\"zjMoney\":0.000},{\"playId\":216,\"createTime\":1478864072000,\"playPl\":6830.000,\"totalMoney\":21.000,\"status\":0,\"zhushu\":1,\"perMoney\":21.000,\"winOrLose\":null,\"content\":\"十位-大\",\"number\":\"20161111082\",\"playGroupId\":1,\"orderNumber\":\"2016111119343248208590\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8889.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":8888.000,\"content\":\"第一球-1\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190606808569\",\"zjMoney\":8889.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8890.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-2\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190613008570\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8891.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-3\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190616808571\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8892.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-4\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190617108572\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8893.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-5\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190620108573\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8894.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-6\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190620508574\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8895.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-7\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190620808575\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8896.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-8\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190621008576\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8897.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-9\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190621608577\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8898.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-10\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190621908578\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8899.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-11\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190622208579\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8900.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-12\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190622508580\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8901.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-13\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190622808581\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8902.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-14\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190623108582\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8903.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-15\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190623408583\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8904.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-16\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190623608584\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8905.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-17\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190624308585\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8906.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-18\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190624608586\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8907.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-19\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190624808587\",\"zjMoney\":0.000},{\"playId\":278,\"createTime\":1478837946000,\"playPl\":8908.000,\"totalMoney\":1.000,\"status\":1,\"zhushu\":1,\"perMoney\":1.000,\"winOrLose\":-1.000,\"content\":\"第一球-20\",\"number\":\"20161111020\",\"playGroupId\":11,\"orderNumber\":\"2016111112190625108588\",\"zjMoney\":0.000}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getSystemAlipay.json",
    "title": "获取系统支付宝收款账号",
    "name": "getSystemAlipay",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "skInfoList",
            "description": "<p>账号列表</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.id",
            "description": "<p>编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.username",
            "description": "<p>收款人姓名</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.account",
            "description": "<p>收款账号</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.imageDate",
            "description": "<p>二维码BASE64数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"skInfoList\":[{\"id\":1,\"username\":\"421\",\"account\":\"42\",\"imageData\":\"iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAACXBIWXMAAJnKAACZygHjkaQiAAAB\\r\\nZGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczpt\\r\\nZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS4xLjIiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0\\r\\ndHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRl\\r\\nc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5h\\r\\nZG9iZS5jb20veGFwLzEuMC8iPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPkFkb2JlIEltYWdl\\r\\nUmVhZHk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRm\\r\\nOlJERj4KPC94OnhtcG1ldGE+ChD8w3AAAAHyUExURf///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAALmVNPEAAACldFJOUwABAgMEBQYICQoLDA0ODxAREhMUFRYXGBkaHB0e\\r\\nHyAiIyQlJiorLC4vMDEyMzQ1Ojs9P0BBQ0RLUV9gYWNlZ2lrcHFydHV2d3h5e3x9fn+BgoSFhoeJ\\r\\niouMjY6PkZKTlJaXmJmam5ydnp+goaKjpKeoqayvsLGys7a3wcPJzs/Q0dPU19ja3d7f4OHi4+Tl\\r\\n5ufo6ert7u/w8vP09fb3+Pn6+/z9/gSld+kAAAnVSURBVHja7dxPiF1XHcDxd+e9eW9m4pjMNE3T\\r\\nNA6jYhe28Q8VrWnpQilaxbYroYF2Y/+IoaB2IdhNEQqiuCiCi1JSN+kiRLGbuhKJ2pRSBQsmUEtp\\r\\naoNNJunMkD/z581777p1d36Fw+G+mc93fTj3nPs+7777Nqc63hrHlp+9kB509HCmq718Ij1m/9Pz\\r\\nY3knJ1ra0QEAgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgA\\r\\nASAABMD4197Ge+tEBq2fH1XFVjS6aa7g/gfvDdJbu5DraisXy33h6vZCNxeA87/cKveR1I/eXRDA\\r\\n6vMX0wCGua525oVyX6R67qmDuQDU/YIA8t3u0Na2im6t5MU263zvAFXJz6Toxbbx1mIX8xLoX4AA\\r\\nEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAJpevbXDb0An\\r\\n20z3HRqlhlTLL603bP+7H+8nT9KY+OtrBVc0fWQ+ebbLxOunmgfg84fSYy52mvYF6N0eGHS+JIDO\\r\\nbTelB13JBiDfT8AgMGZzPB+Tg6JXi9ykfD9cXgK9BAoAASAABIAAEAACQAAIAAEgAASAABAAAkAA\\r\\nCAABIAAEgAAQAAJAAAgAASAABIAAEADaSQDagTFlDwhpj+dH0in6seX7SC6fT58RdGVU8k4upVfU\\r\\nmtxfNezzH60M02cEfdhAAC9NJtddDddK3so/vJJcUWvhhzMNA7D2XDt9I/sNBLDetAPAWhsbgdtd\\r\\nN23V9XUvgfbvBggAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAA\\r\\nEAACQB8RQN0vuaRhyYttRU6I6Y7l1jZDh5+EjojZ94OCKx8t5prp7tuTt6Bun9hMT3Q514o++VjB\\r\\nJ25vPhuAubvG8ul2x5fTY1aPXym4osXFxt2k7fwOMMj1E+AlUAAIAAEgAASAABAAAkAACAABIAAE\\r\\ngAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAuAjV2WbadC8JRWtszyWy14dZZqofWA6Pejq\\r\\nanrMaKUez6/S/rFc9uhyQMDRw+kxdT/wub3yu8CjdO94Pkw7F3b2T2DVi9ykCMkl7wDbtnob7w0A\\r\\n/wIEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAAWBvDa9z\\r\\nNNdMr/89PWbhvk7Bva0eSxKo577VzXOx3Q9+LD3ozb+lx0w9eEN60D9fTY+ZeWA+AuBwrtt9JjBm\\r\\nzz0lcb/4p/SYg/dmAjBz167AMykAoHvnjelBowCA3p17iz4mIwe3jfolAURO7uvluli9GRgU2X69\\r\\nXnIiv5NeAgWAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACADt\\r\\nKAB1YMyg6N4iR1YM2iW3FlpRro8kNlHozJ6t1Tp52kbd+3T6Ru6JHNpxdS19tE9nLjDT/KfSg+Yv\\r\\n9dJb66a31pqNbG02sKLetaX0iqrAiqYDE7Va1fHAut95fiu9podvTQNoTweudvLVNIB9Pwqc7dLv\\r\\np2/A8our6a3dGzjaqJoO3O3BRnrQ4LfvpVd0+L7AxY69X2V6Agw+GAZG7Wrl6dpSekw78lTuBs5/\\r\\nWl++FHgC5tpaJ3CS2ODaxTwrGlwNTBR7B6jarYJFlpRtQXVkpqrk9kcTmVYUmsi/AP8CBIAAEAAC\\r\\nQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAG0XAJPZBkUKHdkwleli\\r\\n9UbjPpJ+ZNmBMd2tyNWq7waQLJ0KHBHz1cVhlv133vpHetCer3eS96A+FDhJ6fpr64FbuVnn0faZ\\r\\n29KDhm8EDoma2kivqDMRObmsam3fnrgn00Qvn8g00de+l2miP7+QHtP7+b4d/g7QadyKsv1MRp5I\\r\\n05teAgWAABAAAkAACAABIAAEgAAQAAIAAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABEDT\\r\\na97pJ3XzblJn/1h+tqPLo/SgfuAAqKqX65u0N/1dGk1HjqTqFYXbeXosAaz+eik96OQf02P2fX8m\\r\\nz4r2Prkn/QA4+0x6oqnHDxQFMD+eT/fIT9fycnpMO9dTeWJuLvAT8H56zPRW0Ts5pu8A2X5M241b\\r\\nUqcCQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAuD/\\r\\n2pgODIqc/bA2GRgUOfthLdepRbGJquOBQStnh+U+ktHiYnrQ8rMX0oO+kj61pzV1S3pro82LgYlu\\r\\nHiU/3uHgg/REnYVhcqLRVmCiyYOjALhO5DNZ+k3JL+Wji5kmOvyl9JgrP11JDzrySOBqTwVIfjMy\\r\\n0c/eSo+5PzLRM2/n+gmouiUBZDu2px8Ysxl5TgaOpGttRH4CIr8l/WwThb7cXgK9BAoAASAABIAA\\r\\nEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACoPFFDn+oS05UjTLtLDZR\\r\\nJ9udnJ5Mbq8artUN+/yr2fX0oNBpS7tm0xebDBxa0u8FJmpHJpqaLQrgyK1JcdWV5643DMDcE4Hz\\r\\nrwKHTbV6jw3Sn9u5X6Unmvz2rvRE7wQm6n5nV1EAew+mx/y3cb847VtyPUoOBAa9+6+ApIcCS3o7\\r\\nMNHMQ5El5ftEIifJDVpKfnGHRSfyL8C/AAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAA\\r\\nEAACQAAIAAEgAASAABAAAkA7CcBkYMxUVXJvncbd7cj213Mdo1RNlb1Jpy+lV76yWfJ2v3E9uaL6\\r\\n418M3IF//yfP92RU35++R5O7M21/4y9zRQGcOtW079vp0+kxC58N3IEzJzOt6BuPFNz++u+9A+T5\\r\\n4drWN8lLoJdAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAAC\\r\\nQNsFwLDkkuqSFxtV23ZrsUJHxEzc0C+4pKlcE8300jd819ZWclDV2ZNpRd30xVpVJ5PJarZdZwKw\\r\\n8OO63Belnss10wNfSB8StX7senqiO36SZ/v1uV+kVzT18P482599cjbXE6D7ibH8ebvxYHrM8rsf\\r\\npgd9biHTis6dTY/p5TpJbWLu5h3+Ehh5cxlGTokq+p7QzXa1gX8BAkAACAABIAAEgAAQAAJAAAgA\\r\\nAQCAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQABo3Psf15GrbrCKchgAAAAASUVORK5C\\r\\nYII=\"}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getSystemBankCard.json",
    "title": "获取系统银行账号",
    "name": "getSystemBankCard",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "bankcardList",
            "description": "<p>银行卡列表</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "bankcardList.id",
            "description": "<p>银行卡编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "bankcardList.bankAccount",
            "description": "<p>银行账号</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "bankcardList.bankName",
            "description": "<p>银行名称</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "bankcardList.userName",
            "description": "<p>开户姓名</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "bankcardList.subBankName",
            "description": "<p>支行名称</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"bankcardList\":[{\"id\":1,\"bankAccount\":\"8888888888888888888\",\"bankName\":\"工商银行（测试）\",\"userName\":\"张三（测试）\",\"subBankName\":\"张三支行（测试）\",\"isEnable\":true,\"updateTime\":1472689509000,\"createTime\":1472689289000},{\"id\":2,\"bankAccount\":\"123\",\"bankName\":\"123\",\"userName\":\"421\",\"subBankName\":\"142\",\"isEnable\":true,\"updateTime\":1475918891000,\"createTime\":1475918891000}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getSystemPayonline.json",
    "title": "获取系统在线支付列表",
    "name": "getSystemPayonline",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "systemPayOnlineList",
            "description": "<p>列表</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "systemPayOnlineList.id",
            "description": "<p>编码</p>"
          },
          {
            "group": "Success 200",
            "type": "Double",
            "optional": false,
            "field": "systemPayOnlineList.minMoney",
            "description": "<p>最小金额</p>"
          },
          {
            "group": "Success 200",
            "type": "Double",
            "optional": false,
            "field": "systemPayOnlineList.maxMoney",
            "description": "<p>最大金额</p>"
          },
          {
            "group": "Success 200",
            "type": "Double",
            "optional": false,
            "field": "systemPayOnlineList.name",
            "description": "<p>支付名称</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":0,\"description\":null,\"systemPayOnlineList\":[{\"id\":1,\"minMoney\":1.00,\"maxMoney\":1.00,\"name\":\"宝付\"},{\"id\":7,\"minMoney\":1.00,\"maxMoney\":1.00,\"name\":\"智付（微信）\"},{\"id\":8,\"minMoney\":1.00,\"maxMoney\":1.00,\"name\":\"闪付支付\"},{\"id\":10,\"minMoney\":0.01,\"maxMoney\":100.00,\"name\":\"汇潮\"},{\"id\":11,\"minMoney\":0.01,\"maxMoney\":100.00,\"name\":\"乐盈\"},{\"id\":12,\"minMoney\":0.01,\"maxMoney\":100.00,\"name\":\"口袋支付\"}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getSystemTenpay.json",
    "title": "获取系统财付通收款账号",
    "name": "getSystemTenpay",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "skInfoList",
            "description": "<p>账号列表</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.id",
            "description": "<p>编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.username",
            "description": "<p>收款人姓名</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.account",
            "description": "<p>收款账号</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.imageData",
            "description": "<p>二维码BASE64数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"skInfoList\":[{\"id\":1,\"username\":\"214\",\"account\":\"124\",\"imageData\":\"iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAACXBIWXMAAJnKAACZygHjkaQiAAAB\\r\\nZGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczpt\\r\\nZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS4xLjIiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0\\r\\ndHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRl\\r\\nc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5h\\r\\nZG9iZS5jb20veGFwLzEuMC8iPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPkFkb2JlIEltYWdl\\r\\nUmVhZHk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRm\\r\\nOlJERj4KPC94OnhtcG1ldGE+ChD8w3AAAAHyUExURf///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\n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\\r\\nYII=\"}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getSystemWeixin.json",
    "title": "获取系统微信收款账号",
    "name": "getSystemWeixin",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "skInfoList",
            "description": "<p>账号列表</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.id",
            "description": "<p>编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.username",
            "description": "<p>收款人姓名</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.account",
            "description": "<p>收款账号</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skInfoList.imageData",
            "description": "<p>二维码BASE64数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"skInfoList\":[{\"id\":1,\"username\":\"142421\",\"account\":\"21\",\"imageData\":\"iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAACXBIWXMAAJnKAACZygHjkaQiAAAB\\r\\nZGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczpt\\r\\nZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS4xLjIiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0\\r\\ndHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRl\\r\\nc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5h\\r\\nZG9iZS5jb20veGFwLzEuMC8iPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPkFkb2JlIEltYWdl\\r\\nUmVhZHk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRm\\r\\nOlJERj4KPC94OnhtcG1ldGE+ChD8w3AAAAHyUExURf///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\n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\\r\\nYII=\"}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getUserBankCard.json",
    "title": "获取用户银行卡列表",
    "name": "getUserBankCard",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "skInfoList",
            "description": "<p>账号列表</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "userBankCardList.id",
            "description": "<p>编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "userBankCardList.bankName",
            "description": "<p>银行名称</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "userBankCardList.subBankName",
            "description": "<p>支行名称</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "userBankCardList.userName",
            "description": "<p>用户名</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "userBankCardList.bankAccount",
            "description": "<p>银行账号</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"userBankCardList\":[{\"id\":1,\"bankName\":\"3\",\"subBankName\":\"2\",\"userName\":\"1\",\"bankAccount\":\"4\"}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getUserInboxList.json",
    "title": "获取用户站内信列表",
    "name": "getUserInboxList",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "startTime",
            "description": "<p>开始时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "endTime",
            "description": "<p>结束时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "Boolean",
            "optional": false,
            "field": "hasRead",
            "description": "<p>是否已读（空则为全部）</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageIndex",
            "description": "<p>第几页</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页数量</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageNum",
            "description": "<p>当前页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "size",
            "description": "<p>当前页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "long",
            "optional": false,
            "field": "total",
            "description": "<p>总数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "firstPage",
            "description": "<p>第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "prePage",
            "description": "<p>前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "nextPage",
            "description": "<p>下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "lastPage",
            "description": "<p>最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isFirstPage",
            "description": "<p>是否为第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isLastPage",
            "description": "<p>是否为最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasPreviousPage",
            "description": "<p>是否有前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasNextPage",
            "description": "<p>是否有下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "navigatePages",
            "description": "<p>导航页码数</p>"
          },
          {
            "group": "Success 200",
            "type": "int[]",
            "optional": false,
            "field": "navigatepageNums",
            "description": "<p>所有导航页号</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "userInboxList",
            "description": "<p>数据</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "userInboxList.id",
            "description": "<p>编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "userInboxList.content",
            "description": "<p>内容</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "userInboxList.createTime",
            "description": "<p>创建时间</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "userInboxList.hasRead",
            "description": "<p>是否已读</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":2,\"total\":2,\"firstPage\":1,\"prePage\":0,\"nextPage\":0,\"lastPage\":1,\"hasPreviousPage\":false,\"hasNextPage\":false,\"navigatePages\":8,\"navigatepageNums\":[1],\"userInboxList\":[{\"id\":1,\"content\":\"12\",\"createTime\":1476079304000,\"hasRead\":true},{\"id\":2,\"content\":\"21\",\"createTime\":1476079298000,\"hasRead\":false}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getUserLastInfo.json",
    "title": "获取用户上次信息，登录，游戏，存款，取款",
    "name": "getUserLastInfo",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "lastLoginTime",
            "description": "<p>上次登录时间</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "lastWeekValidBetMoney",
            "description": "<p>上周有效投注</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "thisWeekValidBetMoney",
            "description": "<p>本周有效投注</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "lastDepositTime",
            "description": "<p>上次存款时间</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "lastWithdrawTime",
            "description": "<p>上次取款时间</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getUserSession.json",
    "title": "获取用户SESSION信息",
    "name": "getUserSession",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "id",
            "description": "<p>编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "registerIp",
            "description": "<p>注册IP</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "sex",
            "description": "<p>性别</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "birthday",
            "description": "<p>生日</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "nickname",
            "description": "<p>昵称</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "email",
            "description": "<p>邮箱</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "account",
            "description": "<p>会员账号</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>姓名</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "telephone",
            "description": "<p>手机</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "qq",
            "description": "<p>QQ</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skype",
            "description": "<p>SKYPE</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "msn",
            "description": "<p>MSN</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isEnable",
            "description": "<p>是否启用</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isFrozen",
            "description": "<p>是否冻结</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "balance",
            "description": "<p>余额</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "freezingAmount",
            "description": "<p>冻结额度</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "registerTime",
            "description": "<p>注册时间</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "layerId",
            "description": "<p>分层id</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "layerName",
            "description": "<p>分层名称</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "privateUrl",
            "description": "<p>贵宾网址</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/getWithdrawList.json",
    "title": "获取用户提款记录",
    "name": "getWithdrawList",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "startTime",
            "description": "<p>开始时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "endTime",
            "description": "<p>结束时间（可为空）</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageIndex",
            "description": "<p>第几页</p>"
          },
          {
            "group": "Parameter",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页数量</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageNum",
            "description": "<p>当前页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "size",
            "description": "<p>当前页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "long",
            "optional": false,
            "field": "total",
            "description": "<p>总数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "firstPage",
            "description": "<p>第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "prePage",
            "description": "<p>前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "nextPage",
            "description": "<p>下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "lastPage",
            "description": "<p>最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isFirstPage",
            "description": "<p>是否为第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isLastPage",
            "description": "<p>是否为最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasPreviousPage",
            "description": "<p>是否有前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasNextPage",
            "description": "<p>是否有下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "navigatePages",
            "description": "<p>导航页码数</p>"
          },
          {
            "group": "Success 200",
            "type": "int[]",
            "optional": false,
            "field": "navigatepageNums",
            "description": "<p>所有导航页号</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "logUserWithdrawList",
            "description": "<p>数据</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "logUserWithdrawList.orderNo",
            "description": "<p>提款编码</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "logUserWithdrawList.createTime",
            "description": "<p>申请时间</p>"
          },
          {
            "group": "Success 200",
            "type": "BigDecimal",
            "optional": false,
            "field": "logUserWithdrawList.money",
            "description": "<p>提款金额</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "logUserWithdrawList.remarks",
            "description": "<p>备注</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "logUserWithdrawList.status",
            "description": "<p>状态编码</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":1,\"total\":1,\"firstPage\":1,\"prePage\":0,\"nextPage\":0,\"lastPage\":1,\"hasPreviousPage\":false,\"hasNextPage\":false,\"navigatePages\":8,\"navigatepageNums\":[1],\"logUserWithdrawList\":[{\"orderNo\":\"20161018095104125763\",\"createTime\":1479570366000,\"money\":null,\"remarks\":\"123\",\"status\":0}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/login.json",
    "title": "用户登录",
    "name": "login",
    "group": "Member",
    "version": "1.0.0",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "account",
            "description": "<p>用户账号</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>密码（32位MD5加密后，小写）</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "ip",
            "description": "<p>用户IP</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>用户token（调用接口必需参数）</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "userId",
            "description": "<p>用户ID（调用接口必需参数）</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "成功响应:",
          "content": "{\n    \"result\": 1,\n    \"description\": \"\",\n    \"token\": \"zxcxvads1zxce124casd\",\n    \"userId\": 421\n}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/readUserInboxNotice.json",
    "title": "阅读站内信",
    "name": "readUserInboxNotice",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "id",
            "description": "<p>站内信编码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/delUserInboxNotice.json",
    "title": "删除站内信",
    "name": "readUserInboxNotice",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "id",
            "description": "<p>站内信编码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/register.json",
    "title": "用户注册",
    "name": "register",
    "group": "Member",
    "version": "1.0.0",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "account",
            "description": "<p>用户账号</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>密码（32位MD5加密后，小写）</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>姓名</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "ip",
            "description": "<p>用户IP</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "url",
            "description": "<p>注册网址</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "成功响应  :",
          "content": "{\n    \"result\": 1,\n    \"description\": \"\"\n}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/resetDrawPassword.json",
    "title": "修改取款密码",
    "name": "resetDrawPassword",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "oldPassword",
            "description": "<p>旧密码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "newPassword",
            "description": "<p>新密码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/resetPassword.json",
    "title": "修改登录密码",
    "name": "resetPassword",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "oldPassword",
            "description": "<p>旧密码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "newPassword",
            "description": "<p>新密码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/submitAlipayzz.json",
    "title": "提交支付宝转账",
    "name": "submitAlipayzz",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Double",
            "optional": false,
            "field": "money",
            "description": "<p>金额（2位小数）</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "userAlipayName",
            "description": "<p>用户支付宝昵称</p>"
          },
          {
            "group": "Parameter",
            "type": "Integer",
            "optional": false,
            "field": "alipayId",
            "description": "<p>支付宝编码</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "time",
            "description": "<p>入款时间</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/submitTenpayzz.json",
    "title": "提交财付通转账",
    "name": "submitTenpayzz",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Double",
            "optional": false,
            "field": "money",
            "description": "<p>金额（2位小数）</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "userTenpayName",
            "description": "<p>用户财付通昵称</p>"
          },
          {
            "group": "Parameter",
            "type": "Integer",
            "optional": false,
            "field": "tenpayId",
            "description": "<p>财付通编码</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "time",
            "description": "<p>入款时间</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/submitWeixinzz.json",
    "title": "提交微信转账",
    "name": "submitWeixinzz",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Double",
            "optional": false,
            "field": "money",
            "description": "<p>金额（2位小数）</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "userWeixinName",
            "description": "<p>用户微信昵称</p>"
          },
          {
            "group": "Parameter",
            "type": "Integer",
            "optional": false,
            "field": "weixinId",
            "description": "<p>微信编码</p>"
          },
          {
            "group": "Parameter",
            "type": "Date",
            "optional": false,
            "field": "time",
            "description": "<p>入款时间</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/submitWithdraw.json",
    "title": "申请取款",
    "name": "submitWithdraw",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Double",
            "optional": false,
            "field": "money",
            "description": "<p>金额（2位小数）</p>"
          },
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "id",
            "description": "<p>银行卡编码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "drawPassword",
            "description": "<p>提款密码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/member/submitYhzz.json",
    "title": "提交银行转账",
    "name": "submitYhzz",
    "group": "Member",
    "version": "1.0.0",
    "permission": [
      {
        "name": "user"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "uid",
            "description": "<p>用户ID</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>鉴权码</p>"
          },
          {
            "group": "Parameter",
            "type": "Double",
            "optional": false,
            "field": "money",
            "description": "<p>金额（2位小数）</p>"
          },
          {
            "group": "Parameter",
            "type": "Integer",
            "optional": false,
            "field": "depositChannelId",
            "description": "<p>存款渠道编码</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "userName",
            "description": "<p>用户姓名</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "bankAccount",
            "description": "<p>银行账号</p>"
          },
          {
            "group": "Parameter",
            "type": "Long",
            "optional": false,
            "field": "bankCardId",
            "description": "<p>存款银行卡编码</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/MemberController.java",
    "groupTitle": "Member"
  },
  {
    "type": "post",
    "url": "/promotion/getPromotion.json",
    "title": "获取优惠活动列表",
    "name": "getPromotion",
    "group": "Promotion",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageNum",
            "description": "<p>当前页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "pageSize",
            "description": "<p>每页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "size",
            "description": "<p>当前页的数量</p>"
          },
          {
            "group": "Success 200",
            "type": "long",
            "optional": false,
            "field": "total",
            "description": "<p>总数量</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "firstPage",
            "description": "<p>第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "prePage",
            "description": "<p>前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "nextPage",
            "description": "<p>下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "lastPage",
            "description": "<p>最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isFirstPage",
            "description": "<p>是否为第一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "isLastPage",
            "description": "<p>是否为最后一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasPreviousPage",
            "description": "<p>是否有前一页</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "hasNextPage",
            "description": "<p>是否有下一页</p>"
          },
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "navigatePages",
            "description": "<p>导航页码数</p>"
          },
          {
            "group": "Success 200",
            "type": "int[]",
            "optional": false,
            "field": "navigatepageNums",
            "description": "<p>所有导航页号</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "promotionList",
            "description": "<p>数据</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.id",
            "description": "<p>优惠活动编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.content",
            "description": "<p>内容</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.name",
            "description": "<p>名称</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.bigImageId",
            "description": "<p>大图编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.smallImageId",
            "description": "<p>小图编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.createTime",
            "description": "<p>创建时间</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.updateTime",
            "description": "<p>修改时间</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.bigImageData",
            "description": "<p>大图数据</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "promotionList.smallImageData",
            "description": "<p>小图数据</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/PromotionController.java",
    "groupTitle": "Promotion"
  },
  {
    "type": "post",
    "url": "/promotion/getServerTime.json",
    "title": "获取服务器时间",
    "name": "getServerTime",
    "group": "Promotion",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "serverTime",
            "description": "<p>服务器时间</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/TimeController.java",
    "groupTitle": "Promotion"
  },
  {
    "type": "post",
    "url": "/ssc/getAllSscOpenTime.json",
    "title": "获取所有彩种开奖时间",
    "name": "getAllSscOpenTime",
    "group": "Ssc",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "sscTimeList",
            "description": "<p>数据列表</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscTimeList.playGroupId",
            "description": "<p>彩种编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscTimeList.playGroupName",
            "description": "<p>彩种名称</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscTimeList.leftTime",
            "description": "<p>剩余封盘时间（秒）</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "sscTimeList.opening",
            "description": "<p>是否开盘中</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscTimeList.number",
            "description": "<p>当前期数</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscTimeList.lastOpenNumber",
            "description": "<p>上期期数</p>"
          },
          {
            "group": "Success 200",
            "type": "Date",
            "optional": false,
            "field": "sscTimeList.lastOpenTime",
            "description": "<p>上期开奖时间</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscTimeList.lastOpenData",
            "description": "<p>上期开奖号码</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscTimeList.leftOpenTime",
            "description": "<p>剩余开奖时间（秒）</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"sscTimeList\":[{\"playGroupId\":1,\"playGroupName\":\"重庆时时彩\",\"leftTime\":188,\"number\":\"20161116111\",\"lastOpenNumber\":\"20161107118\",\"lastOpenTime\":1478533851000,\"lastOpenData\":\"7,2,1,5,8\",\"leftOpenTime\":248,\"opening\":true},{\"playGroupId\":2,\"playGroupName\":\"天津时时彩\",\"leftTime\":35887,\"number\":\"20161117001\",\"lastOpenNumber\":\"20161109051\",\"lastOpenTime\":1478683995000,\"lastOpenData\":\"2,0,1,9,1\",\"leftOpenTime\":35947,\"opening\":true},{\"playGroupId\":3,\"playGroupName\":\"新疆时时彩\",\"leftTime\":486,\"number\":\"20161116080\",\"lastOpenNumber\":\"20161109046\",\"lastOpenTime\":1478684433000,\"lastOpenData\":\"0,5,7,7,8\",\"leftOpenTime\":546,\"opening\":true},{\"playGroupId\":4,\"playGroupName\":\"体彩排列3\",\"leftTime\":74946,\"number\":\"2016315\",\"lastOpenNumber\":\"2016306\",\"lastOpenTime\":1478608767000,\"lastOpenData\":\"7,4,0\",\"leftOpenTime\":76746,\"opening\":true},{\"playGroupId\":5,\"playGroupName\":\"福彩3D\",\"leftTime\":76686,\"number\":\"2016315\",\"lastOpenNumber\":\"2016306\",\"lastOpenTime\":1478608600000,\"lastOpenData\":\"0,7,3\",\"leftOpenTime\":76746,\"opening\":true},{\"playGroupId\":6,\"playGroupName\":\"六合彩\",\"leftTime\":80286,\"number\":\"2016133\",\"lastOpenNumber\":\"2016130\",\"lastOpenTime\":1478784600000,\"lastOpenData\":\"1,2,3,4,5,6,20\",\"leftOpenTime\":80346,\"opening\":true},{\"playGroupId\":7,\"playGroupName\":\"北京28\",\"leftTime\":186,\"number\":\"792526\",\"lastOpenNumber\":\"791206\",\"lastOpenTime\":1478684430000,\"lastOpenData\":\"7,0,3\",\"leftOpenTime\":246,\"opening\":true},{\"playGroupId\":8,\"playGroupName\":\"北京快乐8\",\"leftTime\":186,\"number\":\"792526\",\"lastOpenNumber\":\"791206\",\"lastOpenTime\":1478684430000,\"lastOpenData\":\"06,07,17,19,23,24,30,33,42,47,48,49,51,52,54,56,58,62,69,72,01\",\"leftOpenTime\":246,\"opening\":true},{\"playGroupId\":9,\"playGroupName\":\"北京PK10\",\"leftTime\":6,\"number\":\"587097\",\"lastOpenNumber\":\"585777\",\"lastOpenTime\":1478684269000,\"lastOpenData\":\"06,03,01,10,09,05,02,08,07,04\",\"leftOpenTime\":66,\"opening\":true},{\"playGroupId\":10,\"playGroupName\":\"重庆幸运农场\",\"leftTime\":126,\"number\":\"20161116093\",\"lastOpenNumber\":\"20161109059\",\"lastOpenTime\":1478684023000,\"lastOpenData\":\"10,15,03,18,20,11,07,17\",\"leftOpenTime\":186,\"opening\":true},{\"playGroupId\":11,\"playGroupName\":\"广东快乐十分\",\"leftTime\":35885,\"number\":\"20161117001\",\"lastOpenNumber\":\"20161111020\",\"lastOpenTime\":1478794920000,\"lastOpenData\":\"1,2,3,4,5,6\",\"leftOpenTime\":35945,\"opening\":true}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/SscController.java",
    "groupTitle": "Ssc"
  },
  {
    "type": "post",
    "url": "/ssc/getSscPlayGroupList.json",
    "title": "获取彩种和玩法列表",
    "name": "getSscPlayGroupList",
    "group": "Ssc",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "sscPlayGroupList",
            "description": "<p>彩种列表</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscPlayGroupList.id",
            "description": "<p>彩种编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscPlayGroupList.name",
            "description": "<p>彩种名称</p>"
          },
          {
            "group": "Success 200",
            "type": "Object[]",
            "optional": false,
            "field": "sscPlayList",
            "description": "<p>玩法列表</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscPlayList.id",
            "description": "<p>彩种编码</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sscPlayList.name",
            "description": "<p>玩法名称</p>"
          },
          {
            "group": "Success 200",
            "type": "Long",
            "optional": false,
            "field": "sscPlayList.playGroupId",
            "description": "<p>所属彩种编码</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回例子",
          "content": "{\"result\":1,\"description\":null,\"sscPlayGroupList\":[{\"id\":1,\"name\":\"重庆时时彩\"},{\"id\":2,\"name\":\"天津时时彩\"},{\"id\":3,\"name\":\"新疆时时彩\"},{\"id\":4,\"name\":\"体彩排列3\"},{\"id\":5,\"name\":\"福彩3D\"},{\"id\":6,\"name\":\"六合彩\"},{\"id\":7,\"name\":\"北京28\"},{\"id\":8,\"name\":\"北京快乐8\"},{\"id\":9,\"name\":\"北京PK10\"},{\"id\":10,\"name\":\"重庆幸运农场\"},{\"id\":11,\"name\":\"广东快乐十分\"}],\"sscPlayList\":[{\"id\":204,\"name\":\"特码\",\"playGroupId\":6},{\"id\":205,\"name\":\"正码\",\"playGroupId\":6},{\"id\":206,\"name\":\"正特码\",\"playGroupId\":6},{\"id\":207,\"name\":\"正码1-6\",\"playGroupId\":6},{\"id\":208,\"name\":\"连码\",\"playGroupId\":6},{\"id\":209,\"name\":\"半波\",\"playGroupId\":6},{\"id\":210,\"name\":\"一肖/尾数\",\"playGroupId\":6},{\"id\":211,\"name\":\"特肖\",\"playGroupId\":6},{\"id\":212,\"name\":\"合肖\",\"playGroupId\":6},{\"id\":213,\"name\":\"连肖\",\"playGroupId\":6},{\"id\":214,\"name\":\"尾数连\",\"playGroupId\":6},{\"id\":215,\"name\":\"全不中\",\"playGroupId\":6},{\"id\":216,\"name\":\"双面\",\"playGroupId\":1},{\"id\":217,\"name\":\"数字盘\",\"playGroupId\":1},{\"id\":218,\"name\":\"一字定位\",\"playGroupId\":1},{\"id\":219,\"name\":\"二字定位\",\"playGroupId\":1},{\"id\":220,\"name\":\"三字定位\",\"playGroupId\":1},{\"id\":221,\"name\":\"一字组合\",\"playGroupId\":1},{\"id\":222,\"name\":\"二字组合\",\"playGroupId\":1},{\"id\":223,\"name\":\"二字和数\",\"playGroupId\":1},{\"id\":224,\"name\":\"组选三\",\"playGroupId\":1},{\"id\":225,\"name\":\"组选六\",\"playGroupId\":1},{\"id\":226,\"name\":\"跨度\",\"playGroupId\":1},{\"id\":227,\"name\":\"龙虎\",\"playGroupId\":1},{\"id\":228,\"name\":\"双面\",\"playGroupId\":2},{\"id\":229,\"name\":\"数字盘\",\"playGroupId\":2},{\"id\":230,\"name\":\"一字定位\",\"playGroupId\":2},{\"id\":231,\"name\":\"二字定位\",\"playGroupId\":2},{\"id\":232,\"name\":\"三字定位\",\"playGroupId\":2},{\"id\":233,\"name\":\"一字组合\",\"playGroupId\":2},{\"id\":234,\"name\":\"二字组合\",\"playGroupId\":2},{\"id\":235,\"name\":\"二字和数\",\"playGroupId\":2},{\"id\":236,\"name\":\"组选三\",\"playGroupId\":2},{\"id\":237,\"name\":\"组选六\",\"playGroupId\":2},{\"id\":238,\"name\":\"跨度\",\"playGroupId\":2},{\"id\":239,\"name\":\"龙虎\",\"playGroupId\":2},{\"id\":240,\"name\":\"双面\",\"playGroupId\":3},{\"id\":241,\"name\":\"数字盘\",\"playGroupId\":3},{\"id\":242,\"name\":\"一字定位\",\"playGroupId\":3},{\"id\":243,\"name\":\"二字定位\",\"playGroupId\":3},{\"id\":244,\"name\":\"三字定位\",\"playGroupId\":3},{\"id\":245,\"name\":\"一字组合\",\"playGroupId\":3},{\"id\":246,\"name\":\"二字组合\",\"playGroupId\":3},{\"id\":247,\"name\":\"二字和数\",\"playGroupId\":3},{\"id\":248,\"name\":\"组选三\",\"playGroupId\":3},{\"id\":249,\"name\":\"组选六\",\"playGroupId\":3},{\"id\":250,\"name\":\"跨度\",\"playGroupId\":3},{\"id\":251,\"name\":\"龙虎\",\"playGroupId\":3},{\"id\":252,\"name\":\"定位\",\"playGroupId\":5},{\"id\":253,\"name\":\"组合\",\"playGroupId\":5},{\"id\":254,\"name\":\"和数\",\"playGroupId\":5},{\"id\":255,\"name\":\"组选三\",\"playGroupId\":5},{\"id\":256,\"name\":\"组选六\",\"playGroupId\":5},{\"id\":257,\"name\":\"跨度\",\"playGroupId\":5},{\"id\":258,\"name\":\"双面\",\"playGroupId\":9},{\"id\":259,\"name\":\"数字盘\",\"playGroupId\":9},{\"id\":260,\"name\":\"冠军\",\"playGroupId\":9},{\"id\":261,\"name\":\"亚军\",\"playGroupId\":9},{\"id\":262,\"name\":\"季军\",\"playGroupId\":9},{\"id\":263,\"name\":\"第四名\",\"playGroupId\":9},{\"id\":264,\"name\":\"第五名\",\"playGroupId\":9},{\"id\":265,\"name\":\"第六名\",\"playGroupId\":9},{\"id\":266,\"name\":\"第七名\",\"playGroupId\":9},{\"id\":267,\"name\":\"第八名\",\"playGroupId\":9},{\"id\":268,\"name\":\"第九名\",\"playGroupId\":9},{\"id\":269,\"name\":\"第十名\",\"playGroupId\":9},{\"id\":270,\"name\":\"冠亚和\",\"playGroupId\":9},{\"id\":271,\"name\":\"选5\",\"playGroupId\":8},{\"id\":272,\"name\":\"选4\",\"playGroupId\":8},{\"id\":273,\"name\":\"选3\",\"playGroupId\":8},{\"id\":274,\"name\":\"选2\",\"playGroupId\":8},{\"id\":275,\"name\":\"选1\",\"playGroupId\":8},{\"id\":276,\"name\":\"其他\",\"playGroupId\":8},{\"id\":277,\"name\":\"双面\",\"playGroupId\":11},{\"id\":278,\"name\":\"第一球\",\"playGroupId\":11},{\"id\":279,\"name\":\"第二球\",\"playGroupId\":11},{\"id\":280,\"name\":\"第三球\",\"playGroupId\":11},{\"id\":281,\"name\":\"第四球\",\"playGroupId\":11},{\"id\":282,\"name\":\"第五球\",\"playGroupId\":11},{\"id\":283,\"name\":\"第六球\",\"playGroupId\":11},{\"id\":284,\"name\":\"第七球\",\"playGroupId\":11},{\"id\":285,\"name\":\"第八球\",\"playGroupId\":11},{\"id\":286,\"name\":\"龙虎\",\"playGroupId\":11},{\"id\":287,\"name\":\"定位\",\"playGroupId\":4},{\"id\":288,\"name\":\"组合\",\"playGroupId\":4},{\"id\":289,\"name\":\"和数\",\"playGroupId\":4},{\"id\":290,\"name\":\"组选三\",\"playGroupId\":4},{\"id\":291,\"name\":\"组选六\",\"playGroupId\":4},{\"id\":292,\"name\":\"跨度\",\"playGroupId\":4},{\"id\":293,\"name\":\"和值\",\"playGroupId\":7},{\"id\":294,\"name\":\"双面\",\"playGroupId\":10},{\"id\":295,\"name\":\"第一球\",\"playGroupId\":10},{\"id\":296,\"name\":\"第二球\",\"playGroupId\":10},{\"id\":297,\"name\":\"第三球\",\"playGroupId\":10},{\"id\":298,\"name\":\"第四球\",\"playGroupId\":10},{\"id\":299,\"name\":\"第五球\",\"playGroupId\":10},{\"id\":300,\"name\":\"第六球\",\"playGroupId\":10},{\"id\":301,\"name\":\"第七球\",\"playGroupId\":10},{\"id\":302,\"name\":\"第八球\",\"playGroupId\":10},{\"id\":303,\"name\":\"龙虎\",\"playGroupId\":10}]}",
          "type": "json"
        }
      ]
    },
    "filename": "main/src/main/java/project38/api/controller/SscController.java",
    "groupTitle": "Ssc"
  },
  {
    "type": "post",
    "url": "/webSetting/getLogo.json",
    "title": "获取LOGO数据",
    "name": "getLogo",
    "group": "WebSetting",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "int",
            "optional": false,
            "field": "result",
            "description": "<p>状态编码（1为成功，其他为失败）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "description",
            "description": "<p>状态描述（若失败则会显示提示信息，否则为空）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "imgData",
            "description": "<p>logo的BASE64数据</p>"
          }
        ]
      }
    },
    "filename": "main/src/main/java/project38/api/controller/WebSettingController.java",
    "groupTitle": "WebSetting"
  }
] });
