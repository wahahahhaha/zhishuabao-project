-- 初始数据
use zhishuabao;
-- 用户表初始数据（密码是 12345678）
INSERT INTO user (id, userAccount, userPassword, unionId, mpOpenId, userName, userAvatar, userProfile, userRole)
VALUES (1, 'user1', 'b0dd3697a192885d7c055db46155b26a', 'unionId1', 'mpOpenId1', 'user1',
        'https://www.code-nav.cn/logo.png', '喜欢编程的小白', 'user'),
       (2, 'user2', 'b0dd3697a192885d7c055db46155b26a', 'unionId2', 'mpOpenId2', 'user2',
        'https://www.code-nav.cn/logo.png', '全栈开发工程师', 'user'),
       (3, 'user3', 'b0dd3697a192885d7c055db46155b26a', 'unionId3', 'mpOpenId3', 'user3',
        'https://www.code-nav.cn/logo.png', '前端爱好者', 'user'),
       (4, 'user4', 'b0dd3697a192885d7c055db46155b26a', 'unionId4', 'mpOpenId4', 'user4',
        'https://www.code-nav.cn/logo.png', '后端开发工程师', 'user'),
       (5, 'admin', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, 'admin', 'https://cdn.pixabay.com/photo/2014/03/25/16/32/user-297330_1280.png',
        '系统管理员', 'admin');
-- 创建题库
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('计算机基础', '计算机基础知识题库，涵盖计算机硬件、软件和操作系统等方面的内容', 1, 'https://cdn.pixabay.com/photo/2021/03/02/17/18/computer-6063197_1280.png');

-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('计算机硬件是什么？', '计算机硬件指的是计算机的物理设备，包括 CPU、内存、硬盘等。', '["硬件", "计算机"]', '计算机硬件是指组成计算机的物理部分，主要包括 CPU、内存、硬盘等部件。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是操作系统？', '操作系统是计算机系统中最基本的软件，它管理硬件资源并为应用程序提供服务。', '["操作系统", "计算机"]', '操作系统是计算机系统中的管理软件，主要负责资源的管理与调度。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是计算机网络？', '计算机网络是由多台计算机通过通信设备和线路连接在一起，可以共享资源和信息的系统。', '["网络", "计算机"]', '计算机网络是计算机之间通过物理媒介连接形成的系统，用于共享信息和资源。', 1);
-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('CPU 是什么？', 'CPU 是计算机的中央处理单元，负责执行计算机程序中的指令。', '["硬件", "CPU"]', 'CPU，即中央处理单元，是计算机的核心部件，负责执行指令并进行计算。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('内存和硬盘的区别是什么？', '内存是计算机的短期存储，用于存储当前运行的程序和数据；硬盘是长期存储设备，用于保存数据。', '["硬件", "内存", "硬盘"]', '内存是短期存储，存储正在运行的数据；硬盘是长期存储，保存文件和程序。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是计算机病毒？', '计算机病毒是一种恶意程序，能够在计算机系统中自我复制并造成损害。', '["安全", "病毒"]', '计算机病毒是一种有害的软件，能够在计算机中自我复制并传播，通常会破坏系统或文件。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是文件系统？', '文件系统是操作系统用于管理存储设备上的文件的一种方法。', '["操作系统", "文件系统"]', '文件系统是操作系统的一部分，管理计算机硬盘上存储的数据，提供文件的存储和检索功能。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是操作系统的进程管理？', '操作系统的进程管理是指对计算机中各个进程的创建、调度、终止等操作的管理。', '["操作系统", "进程管理"]', '进程管理是操作系统的一部分，负责对正在运行的进程进行管理，包括创建、调度和终止等。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是虚拟内存？', '虚拟内存是一种技术，允许计算机在物理内存不足时使用硬盘空间来扩展内存。', '["操作系统", "虚拟内存"]', '虚拟内存是一种技术，允许计算机将硬盘的一部分作为扩展的内存使用，以解决物理内存不足的问题。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统的文件权限管理是什么意思？', '文件权限管理是操作系统中用来控制用户对文件和目录的访问权限的机制。', '["操作系统", "权限管理"]', '文件权限管理是操作系统对文件或目录的访问控制，包括读取、写入和执行权限的设置。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('HTTP 和 HTTPS 的区别是什么？', 'HTTP 是一种明文传输协议，而 HTTPS 使用 SSL/TLS 协议进行加密传输。', '["网络", "HTTP", "HTTPS"]', 'HTTP 是无加密的协议，数据以明文传输；而 HTTPS 使用 SSL/TLS 协议进行加密，保障数据传输的安全性。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 DNS？', 'DNS 是域名系统，将域名解析为 IP 地址，便于计算机通过域名访问资源。', '["网络", "DNS"]', 'DNS（域名系统）是一种将域名转换为 IP 地址的系统，使得计算机可以通过域名访问互联网上的资源。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是网络协议？', '网络协议是一组规则，定义了计算机如何在网络中交换信息。', '["网络", "协议"]', '网络协议是计算机通信的基础，它规定了计算机间如何传输和接收数据。', 1);

-- 将题目与题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (1, 1, 1),
    (1, 2, 1),
    (1, 3, 1),
    (1, 4, 1),
    (1, 5, 1),
    (1, 6, 1),
    (1, 7, 1),
    (1, 8, 1),
    (1, 9, 1),
    (1, 10, 1),
    (1, 11, 1),
    (1, 12, 1),
    (1, 13, 1);

-- 创建题库：Java基础面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('Java基础面试题', '涵盖 Java 基础知识，适用于 Java 开发面试准备', 1, 'https://cdn.pixabay.com/photo/2014/04/03/10/09/coffee-309981_1280.png');

-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的基本数据类型有哪些？', 'Java 中有 8 种基本数据类型，分别是：byte、short、int、long、float、double、char、boolean。', '["Java", "基本数据类型"]', 'Java 中有 8 种基本数据类型，分别是：byte（1 字节）、short（2 字节）、int（4 字节）、long（8 字节）、float（4 字节）、double（8 字节）、char（2 字节）、boolean（1 字节）。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的封装是什么？', '封装是面向对象编程的基本特性之一，通过将数据（属性）和方法（行为）封装到类中，提供对外接口，同时隐藏实现细节。', '["Java", "封装"]', '封装是指将数据（属性）和操作数据的方法（行为）封装在一起，外部通过公共的接口来访问和操作这些数据，而不需要关心其具体的实现方式。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的继承是什么？', '继承是面向对象编程的基本特性之一，允许子类继承父类的属性和方法。', '["Java", "继承"]', '继承是面向对象的特性之一，允许一个类（子类）继承另一个类（父类）的属性和方法，子类可以复用父类的功能，并可以根据需要进行扩展或重写。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的多态是什么？', '多态是指同一个方法在不同对象中具有不同的表现形式。', '["Java", "多态"]', '多态是面向对象编程中的重要特性，同一操作作用于不同对象时，表现出不同的行为，通常通过方法重载和方法重写实现。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的接口和抽象类有什么区别？', '接口只包含方法的声明，没有方法的实现，抽象类可以包含部分方法实现。', '["Java", "接口", "抽象类"]', '接口是方法的集合，不能有实现，抽象类可以有部分实现。接口支持多继承，抽象类不支持多继承。一个类可以实现多个接口，但只能继承一个抽象类。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 Java 中的异常？', '异常是程序运行过程中发生的错误，Java 提供了强大的异常处理机制来捕获和处理这些错误。', '["Java", "异常"]', '异常是指程序执行过程中发生的错误，Java 使用 `try-catch` 语句捕获并处理异常。`throws` 用于声明可能发生的异常，`throw` 用于手动抛出异常。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的 String 和 StringBuilder 的区别是什么？', 'String 是不可变的类，而 StringBuilder 是可变的类，适合进行大量字符串操作。', '["Java", "String", "StringBuilder"]', 'String 是不可变类，每次修改字符串都会生成一个新对象；StringBuilder 是可变类，适合做大量字符串拼接或修改，能提高效率。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 Java 中的垃圾回收机制（GC）？', '垃圾回收机制是 Java 中自动管理内存的一部分，用于回收不再使用的对象。', '["Java", "垃圾回收"]', 'Java 的垃圾回收机制会自动回收不再使用的对象，释放内存空间。通过 `GC`（Garbage Collection）算法来决定何时回收不再使用的对象。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的 synchronized 关键字的作用是什么？', 'synchronized 用于确保在多线程环境中对某一资源的访问是线程安全的。', '["Java", "多线程", "synchronized"]', 'synchronized 用于控制对共享资源的访问，确保同一时间只有一个线程可以访问该资源，避免多线程竞争。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的集合框架包括哪些重要接口？', 'Java 的集合框架包括 List、Set、Queue 和 Map 接口。', '["Java", "集合框架"]', 'Java 集合框架主要包括以下接口：List（有序集合）、Set（无序集合）、Queue（队列）、Map（键值对集合）。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的 HashMap 和 Hashtable 有什么区别？', 'HashMap 是线程不安全的，Hashtable 是线程安全的。', '["Java", "HashMap", "Hashtable"]', 'HashMap 是非线程安全的，适用于单线程环境；Hashtable 是线程安全的，但性能较低。HashMap 可以存储 null 键和 null 值，而 Hashtable 不允许。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的 ArrayList 和 LinkedList 有什么区别？', 'ArrayList 基于动态数组，LinkedList 基于双向链表，适用于不同的操作场景。', '["Java", "ArrayList", "LinkedList"]', 'ArrayList 基于数组实现，访问元素快，但插入和删除操作较慢；LinkedList 基于链表实现，插入和删除操作快，但访问元素慢。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 Java 中的类加载机制？', '类加载机制是 Java 中根据需要将字节码文件加载到 JVM 内存中的过程。', '["Java", "类加载机制"]', 'Java 的类加载机制通过类加载器（ClassLoader）将字节码文件加载到 JVM 中。分为启动类加载器、扩展类加载器和应用类加载器等。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Java 中的线程池是什么？', '线程池是一个预先创建并管理线程的容器，避免了频繁创建和销毁线程的开销。', '["Java", "线程池"]', '线程池是一种高效的多线程管理机制，能够复用线程资源，避免线程频繁创建销毁带来的性能损失。Java 提供了 `ExecutorService` 接口和 `Executors` 工厂类来管理线程池。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 Java 中的反射机制？', '反射机制是 Java 提供的一种在运行时动态获取类的信息并操作类的功能。', '["Java", "反射机制"]', '反射机制是 Java 提供的在运行时动态获取类信息（如类名、方法、字段等）的功能，并可以修改类的行为。通过 `Class` 类和 `Method` 类等实现。', 1);
-- 将这些题目与 Java 基础面试题题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (2, 1, 1),
    (2, 2, 1),
    (2, 3, 1),
    (2, 4, 1),
    (2, 5, 1),
    (2, 6, 1),
    (2, 7, 1),
    (2, 8, 1),
    (2, 9, 1),
    (2, 10, 1),
    (2, 11, 1),
    (2, 12, 1),
    (2, 13, 1),
    (2, 14, 1),
    (2, 15, 1);

-- 创建题库：操作系统相关面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('操作系统基础面试题', '涵盖操作系统基础知识，适用于操作系统相关岗位面试准备', 1, 'https://cdn.pixabay.com/photo/2016/09/16/19/15/gear-1674891_1280.png');
-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是操作系统？', '操作系统是计算机系统中的核心软件，负责管理硬件资源并为应用程序提供服务。', '["操作系统"]', '操作系统（OS）是计算机硬件和应用程序之间的中介，负责管理硬件资源，如 CPU、内存、磁盘等，并提供执行环境和接口。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统的主要功能是什么？', '操作系统的主要功能包括进程管理、内存管理、文件系统管理、设备管理、用户界面等。', '["操作系统", "功能"]', '操作系统的主要功能包括：进程管理、内存管理、文件管理、设备管理、用户接口以及提供系统的安全性和保护机制。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统中的进程是什么？', '进程是操作系统分配资源的基本单位，是正在执行的程序实例。', '["操作系统", "进程"]', '进程是正在执行的程序，包括程序代码、数据、堆栈等，操作系统为每个进程分配资源，如 CPU 时间、内存等。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是进程调度？', '进程调度是操作系统根据一定的算法决定哪个进程获得 CPU 使用权的过程。', '["操作系统", "进程调度"]', '进程调度是操作系统的一部分，用于决定哪个进程获得 CPU 时间。常见的调度算法有先来先服务（FCFS）、最短作业优先（SJF）、时间片轮转等。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统中的死锁是什么？', '死锁是指两个或多个进程因争夺资源而永远互相等待，导致无法继续执行的情况。', '["操作系统", "死锁"]', '死锁是指两个或多个进程在竞争有限资源时，由于互相等待对方释放资源而导致的僵局。解决死锁的方法包括死锁预防、避免、检测和恢复。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是内存管理？', '内存管理是操作系统的一项重要功能，负责合理分配、使用和回收内存资源。', '["操作系统", "内存管理"]', '内存管理是操作系统负责管理计算机内存的过程。包括内存的分配、回收以及虚拟内存的使用。常见的管理方式有分区管理、分页管理、段式管理等。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是分页和分段？', '分页和分段是两种常见的内存管理技术，分页将内存分成固定大小的块，而分段将内存分成可变大小的块。', '["操作系统", "分页", "分段"]', '分页和分段是内存管理的两种方式。分页将内存划分为固定大小的块（页），分段则将内存划分为按需大小的段。分页简化了地址转换，分段则提供了更好的逻辑结构。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是虚拟内存？', '虚拟内存是操作系统利用硬盘空间来扩展物理内存的技术。', '["操作系统", "虚拟内存"]', '虚拟内存是操作系统的技术，它通过使用硬盘空间来模拟更多的内存资源，使得程序可以使用超出物理内存的空间，常见的实现方式有页面交换技术。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统中的文件系统是什么？', '文件系统是操作系统用来组织和管理数据存储的机制，提供对文件的访问和操作功能。', '["操作系统", "文件系统"]', '文件系统是操作系统用于管理存储设备上的文件的方式。它决定了文件的存储格式、访问方式以及目录结构。常见的文件系统有 FAT、NTFS、EXT 等。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统中的设备管理是什么？', '设备管理是操作系统用于控制和协调输入输出设备的功能。', '["操作系统", "设备管理"]', '设备管理是操作系统的一个核心功能，它负责控制和协调计算机系统中的输入输出设备，如磁盘、打印机、显示器等，确保设备资源的有效使用。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是操作系统中的上下文切换？', '上下文切换是操作系统保存和恢复进程状态的过程，使得 CPU 可以在不同进程间切换。', '["操作系统", "上下文切换"]', '上下文切换是操作系统在多任务处理中，保存当前进程的状态，并加载待执行进程的状态。它是多任务处理的核心机制。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统中的调度算法有哪些？', '操作系统中常见的调度算法有先来先服务、短作业优先、时间片轮转等。', '["操作系统", "调度算法"]', '常见的进程调度算法有：先来先服务（FCFS）、最短作业优先（SJF）、优先级调度、时间片轮转等，每种算法适用于不同的场景。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('操作系统中的 I/O 设备管理有哪些关键技术？', 'I/O 设备管理涉及缓冲区、设备驱动程序、直接内存访问（DMA）等技术。', '["操作系统", "I/O管理"]', 'I/O 设备管理包括缓冲区管理、设备驱动程序和直接内存访问（DMA）等技术。通过这些技术，操作系统能够高效地与硬件设备进行交互。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是操作系统的系统调用？', '系统调用是用户程序与操作系统内核之间进行交互的接口。', '["操作系统", "系统调用"]', '系统调用是操作系统为应用程序提供的接口，用户程序通过系统调用请求操作系统执行特权操作，如文件操作、内存分配等。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是操作系统的用户界面？', '用户界面是用户与操作系统交互的方式，可以是命令行或图形化界面。', '["操作系统", "用户界面"]', '操作系统的用户界面是用户与操作系统交互的接口，通常分为命令行界面（CLI）和图形用户界面（GUI）。', 1);

-- 创建第十六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是进程间通信（IPC）？', '进程间通信是不同进程之间交换数据的方式，常见的有管道、消息队列、共享内存等。', '["操作系统", "进程间通信"]', '进程间通信（IPC）是不同进程之间共享数据或同步的技术。常见的 IPC 技术包括管道、消息队列、共享内存、信号量等。', 1);
-- 将这些题目与 操作系统基础面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (3, 1, 1),
    (3, 2, 1),
    (3, 3, 1),
    (3, 4, 1),
    (3, 5, 1),
    (3, 6, 1),
    (3, 7, 1),
    (3, 8, 1),
    (3, 9, 1),
    (3, 10, 1),
    (3, 11, 1),
    (3, 12, 1),
    (3, 13, 1),
    (3, 14, 1),
    (3, 15, 1),
    (3, 16, 1);
-- 创建题库：计算机网络基础面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('计算机网络基础面试题', '涵盖计算机网络基础知识，适用于计算机网络相关岗位面试准备', 1, 'https://cdn.pixabay.com/photo/2013/07/12/14/43/computer-148645_1280.png');
-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是计算机网络？', '计算机网络是由多个计算机通过通信介质和协议连接在一起的系统，用于共享资源和信息。', '["计算机网络"]', '计算机网络是由多台计算机和其他设备通过通信介质（如电缆、光纤、无线）连接而成的系统，目的是共享资源和信息。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 OSI 模型？', 'OSI 模型是一个分层的计算机网络通信框架，共有七层，分别是物理层、数据链路层、网络层、传输层、会话层、表示层和应用层。', '["计算机网络", "OSI模型"]', 'OSI 模型是开放系统互联（Open Systems Interconnection）模型，用于定义计算机网络通信的七个层次，分别为：物理层、数据链路层、网络层、传输层、会话层、表示层、应用层。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('TCP 和 UDP 有什么区别？', 'TCP 是面向连接的协议，保证数据传输的可靠性；UDP 是无连接的协议，不保证数据传输的可靠性。', '["计算机网络", "TCP", "UDP"]', 'TCP 是传输控制协议，面向连接，提供可靠的、按顺序传输的数据；UDP 是用户数据报协议，无连接，不保证数据的可靠性和顺序。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 IP 地址？', 'IP 地址是 Internet Protocol 地址的缩写，是用于标识网络中每台设备的唯一地址。', '["计算机网络", "IP地址"]', 'IP 地址是每个连接到计算机网络的设备的唯一标识符，通常分为 IPv4 和 IPv6 两种类型。IPv4 地址为 32 位，IPv6 地址为 128 位。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 MAC 地址？', 'MAC 地址是网络接口卡的唯一标识符，用于局域网中的物理设备识别。', '["计算机网络", "MAC地址"]', 'MAC 地址（介质访问控制地址）是网络接口卡（NIC）上的唯一标识符，通常由厂商赋予，长度为 48 位，用于局域网中设备的物理识别。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 DNS？', 'DNS（域名系统）是将域名转换为 IP 地址的系统，帮助用户通过域名访问网站。', '["计算机网络", "DNS"]', 'DNS（域名系统）是将人类可读的域名（如 www.example.com）转换为计算机可识别的 IP 地址的系统。它通过分布式数据库和递归查询来实现域名解析。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 HTTP 和 HTTPS？', 'HTTP 是一种无状态的协议，HTTPS 是 HTTP 的安全版本，通过 SSL/TLS 协议加密数据。', '["计算机网络", "HTTP", "HTTPS"]', 'HTTP（超文本传输协议）是一种无状态的协议，常用于网页数据传输；HTTPS（安全超文本传输协议）通过 SSL/TLS 协议加密 HTTP 数据，提供安全的数据传输。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是路由器和交换机的区别？', '路由器用于连接不同网络并进行路由选择，交换机用于同一网络中设备之间的数据传输。', '["计算机网络", "路由器", "交换机"]', '路由器用于不同网络之间的通信，决定数据如何从源网络到达目的网络；交换机用于同一网络内设备间的通信，依据 MAC 地址转发数据帧。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 NAT（网络地址转换）？', 'NAT 是将私有 IP 地址转换为公共 IP 地址的技术，用于节省 IP 地址。', '["计算机网络", "NAT"]', 'NAT（网络地址转换）技术用于将私有网络中的内部 IP 地址转换为公共 IP 地址，帮助多个设备共享一个公共 IP 地址。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 ARP 协议？', 'ARP 协议用于将 IP 地址映射到物理地址（MAC 地址），用于局域网内的通信。', '["计算机网络", "ARP协议"]', 'ARP（地址解析协议）用于将网络层的 IP 地址映射到数据链路层的 MAC 地址。在局域网内，计算机通过 ARP 请求找到目标设备的 MAC 地址。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 SSL/TLS 协议？', 'SSL/TLS 协议用于加密网络通信，确保数据的安全性，广泛应用于 HTTPS 中。', '["计算机网络", "SSL", "TLS"]', 'SSL（安全套接层）和 TLS（传输层安全性）协议用于加密网络通信，确保数据在传输过程中不被窃取或篡改，常用于 HTTPS 等安全通信协议。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 TCP/IP 协议栈？', 'TCP/IP 协议栈是一组通信协议，包括了网络通信的各个层次，最常用的网络协议之一。', '["计算机网络", "TCP/IP"]', 'TCP/IP 协议栈是一个分层的通信协议体系，主要包括应用层、传输层、网络层和数据链路层。它广泛用于互联网中的数据传输。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是防火墙？', '防火墙是一种网络安全设备，用于控制进出网络的数据流，防止未经授权的访问。', '["计算机网络", "防火墙"]', '防火墙是一种网络安全设备，用于过滤网络流量，控制哪些数据包可以进出网络，防止恶意访问或攻击。防火墙可以是硬件或软件形式。', 1);
-- 将这些题目与 计算机网络基础面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (4, 1, 1),
    (4, 2, 1),
    (4, 3, 1),
    (4, 4, 1),
    (4, 5, 1),
    (4, 6, 1),
    (4, 7, 1),
    (4, 8, 1),
    (4, 9, 1),
    (4, 10, 1),
    (4, 11, 1),
    (4, 12, 1),
    (4, 13, 1);
-- 创建题库：MySQL基础面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('MySQL基础面试题', '涵盖 MySQL 数据库的基础知识、性能优化、索引等，适用于数据库相关岗位面试准备', 1, 'https://cdn.pixabay.com/photo/2020/03/17/17/36/database-4941301_1280.png');

-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('MySQL 中的 InnoDB 和 MyISAM 有什么区别？', 'InnoDB 支持事务、行级锁，MyISAM 不支持事务和行级锁，InnoDB 更适合高并发的应用。', '["MySQL", "InnoDB", "MyISAM"]', 'InnoDB 支持事务、行级锁、外键约束，更适合高并发的应用；MyISAM 不支持事务和行级锁，但查询性能较高，适用于读取频繁的场景。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 MySQL 的事务？', 'MySQL 的事务是指一组操作，要么全部成功，要么全部失败。事务有四个特性：原子性、一致性、隔离性、持久性。', '["MySQL", "事务"]', 'MySQL 的事务是指一组 SQL 语句的集合，要么全部成功，要么全部失败。事务具有四个特性：原子性（Atomicity）、一致性（Consistency）、隔离性（Isolation）、持久性（Durability），合称 ACID。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是索引？MySQL 中如何创建索引？', '索引是加速查询的工具，MySQL 中可以通过 CREATE INDEX 或 ALTER TABLE 创建索引。', '["MySQL", "索引"]', '索引是数据库的一种数据结构，用于加速查询操作。MySQL 中可以使用 CREATE INDEX 语句或通过 ALTER TABLE 语句创建索引。索引类型有：B 树索引、哈希索引、全文索引等。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 JOIN？MySQL 中有哪些类型的 JOIN？', 'JOIN 用于连接多个表，MySQL 中有 INNER JOIN、LEFT JOIN、RIGHT JOIN 和 CROSS JOIN。', '["MySQL", "JOIN"]', 'JOIN 用于从多个表中查询数据，MySQL 中常见的 JOIN 类型有：INNER JOIN（内连接）、LEFT JOIN（左连接）、RIGHT JOIN（右连接）和 CROSS JOIN（笛卡尔积）。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何优化 MySQL 查询性能？', '可以通过使用索引、优化查询语句、调整查询缓存等方式来优化 MySQL 查询性能。', '["MySQL", "查询优化"]', '优化 MySQL 查询性能的方法包括：使用适当的索引、避免 SELECT *、使用 LIMIT 语句限制查询返回的结果集、使用 EXPLAIN 进行查询分析、优化 JOIN 操作、启用查询缓存等。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('MySQL 中的外键是什么？', '外键是用来维护表与表之间数据一致性的一种约束，确保两个表之间的关系正确。', '["MySQL", "外键"]', '外键是表与表之间的一种约束，用于维护数据的一致性。它确保一个表中的字段值必须在另一个表的主键或唯一键中存在。InnoDB 支持外键，MyISAM 不支持外键。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('MySQL 如何处理锁？', 'MySQL 中有多种锁，常见的有表锁和行锁，行锁更加细粒度，适合高并发场景。', '["MySQL", "锁"]', 'MySQL 中的锁主要有表锁和行锁。表锁会锁住整个表，适用于对数据操作较少的场景；行锁则锁住特定的行，适用于高并发环境。InnoDB 支持行级锁，MyISAM 支持表级锁。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('MySQL 中的 ACID 是什么？', 'ACID 是数据库事务的四个特性：原子性、一致性、隔离性和持久性。', '["MySQL", "ACID"]', 'ACID 是数据库事务的四个基本特性，分别是：原子性（Atomicity），一致性（Consistency），隔离性（Isolation），持久性（Durability）。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 MySQL 的主从复制？', '主从复制是 MySQL 的一种数据同步机制，将数据从主服务器复制到从服务器。', '["MySQL", "主从复制"]', 'MySQL 主从复制是指将主服务器的数据库内容复制到一个或多个从服务器，从而实现数据的冗余备份与负载均衡。主服务器负责数据写操作，从服务器负责数据读操作。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('MySQL 中的 GROUP BY 是什么？', 'GROUP BY 用于对查询结果进行分组，常与聚合函数一起使用。', '["MySQL", "GROUP BY"]', 'GROUP BY 用于将查询结果按照指定列进行分组，并且常与聚合函数（如 COUNT、SUM、AVG 等）一起使用，用于生成统计信息。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 MySQL 的存储过程？', '存储过程是 SQL 语句的集合，可以封装复杂的操作，减少客户端的处理负担。', '["MySQL", "存储过程"]', '存储过程是 MySQL 中一组预先编译的 SQL 语句的集合，可以通过调用存储过程来执行这些语句，减少重复的 SQL 编写，提高代码的复用性。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是 MySQL 的触发器？', '触发器是数据库中自动执行的操作，用于在特定事件（如插入、更新、删除）发生时触发。', '["MySQL", "触发器"]', '触发器是 MySQL 中的一种自动执行的操作，可以在特定事件（如插入、更新、删除）发生时自动触发执行，用于数据的自动处理。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('MySQL 中的 EXPLAIN 命令有什么作用？', 'EXPLAIN 用于分析查询语句的执行计划，帮助优化查询性能。', '["MySQL", "EXPLAIN"]', 'EXPLAIN 命令用于显示 MySQL 查询执行计划，包括查询的每个步骤的执行顺序、使用的索引、扫描的行数等信息。通过分析 EXPLAIN 输出，可以优化查询性能。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('MySQL 中的联合索引和单列索引有何不同？', '联合索引是基于多个列创建的索引，而单列索引则仅基于单列。', '["MySQL", "联合索引", "单列索引"]', '联合索引是基于多个列创建的索引，可以提高涉及多个列的查询性能；单列索引是基于单个列创建的索引，适用于单列查询。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何防止 MySQL 中的 SQL 注入？', '使用预处理语句（prepared statements）和绑定参数是防止 SQL 注入的有效方法。', '["MySQL", "SQL注入"]', '防止 SQL 注入的有效方法包括：使用预处理语句（prepared statements）和绑定参数，避免直接将用户输入拼接到 SQL 查询中。', 1);
-- 将这些题目与 MySQL基础面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (5, 1, 1),
    (5, 2, 1),
    (5, 3, 1),
    (5, 4, 1),
    (5, 5, 1),
    (5, 6, 1),
    (5, 7, 1),
    (5, 8, 1),
    (5, 9, 1),
    (5, 10, 1),
    (5, 11, 1),
    (5, 12, 1),
    (5, 13, 1),
    (5, 14, 1),
    (5, 15, 1);
-- 创建题库：Redis基础面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('Redis基础面试题', '涵盖 Redis 数据库的基础知识、常用数据结构、性能优化等，适用于数据库相关岗位面试准备', 1, 'https://cdn.pixabay.com/photo/2020/06/25/14/21/server-icons-5339848_1280.png');

-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 是什么？', 'Redis 是一个开源的高性能键值对数据库，支持丰富的数据类型和操作。', '["Redis", "基础"]', 'Redis 是一个开源的、基于内存的键值对数据库，支持多种数据结构，如字符串、哈希、列表、集合、有序集合等。它广泛应用于缓存、实时数据处理等场景。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 常用的数据结构有哪些？', 'Redis 支持字符串、哈希、列表、集合、有序集合等多种数据结构。', '["Redis", "数据结构"]', 'Redis 支持的常用数据结构有：字符串（String）、哈希（Hash）、列表（List）、集合（Set）、有序集合（Sorted Set）、位图（Bitmap）、HyperLogLog、地理空间等。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 中的 String 类型是什么？', 'String 类型是 Redis 中最基本的数据类型，可以存储字符串、数字等。', '["Redis", "String"]', 'Redis 中的 String 类型是最基本的数据类型，它可以存储字符串、整数、浮点数等类型的数据，并且支持常见的操作，如设置、获取、递增、递减等。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 中的 List 类型是什么？', 'List 类型是一个有序的链表，支持从两端插入和删除元素。', '["Redis", "List"]', 'Redis 中的 List 类型是一个有序链表，可以在两端进行插入、删除和访问操作。它是典型的 FIFO（先进先出）结构，支持 lpush、rpush、lpop、rpop 等操作。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 中的 Hash 类型是什么？', 'Hash 类型是一种键值对集合，适合存储对象数据。', '["Redis", "Hash"]', 'Redis 中的 Hash 类型是键值对的集合，适合存储对象数据（如用户信息）。它支持通过字段名获取字段值的操作，常用命令有 hset、hget、hgetall 等。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 中的 Set 类型是什么？', 'Set 类型是一个无序的集合，支持集合操作，如并集、交集、差集等。', '["Redis", "Set"]', 'Redis 中的 Set 类型是一个无序集合，不允许重复元素。它支持集合间的并集、交集、差集等操作，常用命令有 sadd、srem、smembers、sunion 等。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 中的 Sorted Set 类型是什么？', 'Sorted Set 是一个有序的集合，元素具有分数（score），按照分数顺序排列。', '["Redis", "Sorted Set"]', 'Redis 中的 Sorted Set 是一个有序的集合，每个元素都有一个分数（score），元素会根据分数排序。常用命令有 zadd、zrange、zscore 等。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 的持久化机制有哪些？', 'Redis 提供了 RDB 和 AOF 两种持久化方式。', '["Redis", "持久化"]', 'Redis 提供了两种持久化机制：RDB（快照）和 AOF（追加文件）。RDB 通过定期生成数据库快照来持久化数据；AOF 记录所有写操作，通过重写文件来保证数据持久性。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 的事务是如何工作的？', 'Redis 的事务通过 MULTI、EXEC、DISCARD 和 WATCH 四个命令实现。', '["Redis", "事务"]', 'Redis 支持事务操作，通过 MULTI 开始事务，EXEC 提交事务，DISCARD 放弃事务，WATCH 用于实现乐观锁。事务中的命令会被按顺序执行，但不会立即执行，直到 EXEC 被调用。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 中的 PUB/SUB 模式是什么？', 'PUB/SUB 是一种消息发布与订阅机制，客户端可以订阅频道并接收消息。', '["Redis", "PUB/SUB"]', 'Redis 中的 PUB/SUB 模式是一种消息发布与订阅机制，客户端可以订阅一个或多个频道，发布者将消息发布到频道，订阅者接收到相应的消息。常用命令有 publish、subscribe、unsubscribe 等。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 集群是什么？', 'Redis 集群是 Redis 的一种分布式实现，能够实现数据的分片存储和高可用。', '["Redis", "集群"]', 'Redis 集群是一种分布式架构，可以将数据分布到多个节点上。它实现了数据的分片存储、自动故障转移和高可用性。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 如何保证高可用性？', 'Redis 通过哨兵（Sentinel）和主从复制实现高可用性。', '["Redis", "高可用"]', 'Redis 通过主从复制（Master-Slave）和哨兵（Sentinel）机制来实现高可用性。当主节点故障时，哨兵可以自动进行故障转移，选举新的主节点，确保服务持续可用。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 的复制机制是什么？', 'Redis 支持主从复制，通过复制数据实现数据冗余和负载均衡。', '["Redis", "复制"]', 'Redis 支持主从复制（Master-Slave），主节点负责写操作，从节点负责读操作。通过复制机制，数据可以在多个节点之间冗余存储，提高数据的可用性。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 如何优化性能？', '通过合理使用数据结构、优化内存使用、减少阻塞操作等方式来优化 Redis 性能。', '["Redis", "性能优化"]', 'Redis 性能优化的方式包括：合理使用数据结构、使用持久化机制时避免过度写入、尽量减少阻塞操作、合理配置内存大小等。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Redis 中的 LRU 算法是什么？', 'LRU 算法是 Redis 用于淘汰缓存数据的算法，最久未使用的数据会被淘汰。', '["Redis", "LRU"]', 'LRU（Least Recently Used）算法是 Redis 用于缓存数据淘汰的一种策略，最久未使用的数据将被删除，以腾出空间存储新的数据。Redis 提供了多种内存淘汰策略，其中 LRU 是最常用的一种。', 1);
-- 将这些题目与 Redis基础面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (6, 1, 1),
    (6, 2, 1),
    (6, 3, 1),
    (6, 4, 1),
    (6, 5, 1),
    (6, 6, 1),
    (6, 7, 1),
    (6, 8, 1),
    (6, 9, 1),
    (6, 10, 1),
    (6, 11, 1),
    (6, 12, 1),
    (6, 13, 1),
    (6, 14, 1),
    (6, 15, 1);
-- 创建题库：C++基础面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('C++基础面试题', '涵盖 C++ 语言的基础知识、面向对象编程、STL、多线程等，适用于 C++ 开发岗位的面试准备', 1, ' https://cdn.pixabay.com/photo/2012/04/24/13/56/copyright-40160_1280.png');
-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的引用是什么？', '引用是 C++ 中的一个重要特性，它是变量的别名。', '["C++", "引用"]', '引用是 C++ 中的一个重要特性，引用是变量的别名，一旦引用被初始化为某个变量，就不能再指向其他变量。通过引用可以实现函数的参数传递和返回值优化。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的指针和引用的区别是什么？', '指针和引用都可以用来指向其他变量，但它们有一些不同的特性。', '["C++", "指针", "引用"]', '指针和引用的主要区别在于：指针是一个变量，可以修改指向的对象，而引用一旦绑定后不能改变指向；指针可以为 NULL，而引用必须始终绑定到一个有效的对象。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的构造函数和析构函数是什么？', '构造函数在对象创建时调用，析构函数在对象销毁时调用。', '["C++", "构造函数", "析构函数"]', '构造函数用于初始化对象，在对象创建时自动调用；析构函数用于释放资源，在对象销毁时自动调用。构造函数可以有多个重载，而析构函数不能重载。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的多态是什么？', '多态是面向对象编程中的一个重要特性，指的是通过基类指针或引用来调用派生类的函数。', '["C++", "多态"]', 'C++ 中的多态分为静态多态（函数重载和运算符重载）和动态多态（虚函数）。动态多态通过基类指针或引用调用派生类的函数，运行时通过虚函数机制决定调用哪个函数。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的虚函数是什么？', '虚函数是为了实现动态多态而在基类中声明的函数，派生类可以重写虚函数。', '["C++", "虚函数"]', '虚函数是 C++ 中的一个关键特性，基类中的虚函数可以被派生类重写。通过虚函数，程序可以根据对象的实际类型动态调用相应的函数，实现多态。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的 STL 是什么？', 'STL（Standard Template Library）是 C++ 的标准模板库，提供了一系列通用的模板类和函数。', '["C++", "STL"]', 'STL（Standard Template Library）是 C++ 标准库的一部分，提供了一系列通用的数据结构（如向量、列表、队列、映射）和算法（如排序、查找、合并）。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的模板是什么？', '模板是 C++ 中用于实现泛型编程的一种机制。', '["C++", "模板"]', 'C++ 中的模板是实现泛型编程的一种机制。函数模板和类模板允许编写与类型无关的代码，在编译时根据实际类型生成相应的函数或类代码。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的智能指针是什么？', '智能指针是 C++ 中的一种对象，用来管理内存的自动释放。', '["C++", "智能指针"]', 'C++ 中的智能指针（如 std::unique_ptr、std::shared_ptr）是用来管理动态分配内存的对象。智能指针能够在不再需要时自动释放内存，防止内存泄漏。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的 const 和 constexpr 的区别是什么？', 'const 和 constexpr 都是用于声明常量，但 constexpr 在编译时求值。', '["C++", "const", "constexpr"]', 'const 用来声明常量，可以在运行时初始化；而 constexpr 用来声明常量并要求在编译时求值，通常用于常量表达式。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的运算符重载是什么？', '运算符重载是允许程序员为自定义类型定义特定运算符行为的功能。', '["C++", "运算符重载"]', 'C++ 中的运算符重载允许程序员为自定义类型定义常见运算符（如 +、-、* 等）的行为，使得这些运算符能够应用于自定义类型的对象。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的析构函数和构造函数的区别是什么？', '析构函数和构造函数的主要区别在于它们的调用时机不同。', '["C++", "构造函数", "析构函数"]', '构造函数用于对象创建时的初始化，而析构函数在对象销毁时调用，用于清理资源。构造函数可以有多个重载，析构函数只有一个且不能重载。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的异常处理机制是什么？', 'C++ 提供了 try、catch 和 throw 三个关键字来处理异常。', '["C++", "异常处理"]', 'C++ 中的异常处理机制通过 try、catch 和 throw 实现。throw 用来抛出异常，try 用来捕获异常，catch 用来处理异常。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的 static 关键字的作用是什么？', 'static 关键字用于控制变量和函数的生命周期和作用域。', '["C++", "static"]', 'static 关键字有三个主要作用：1) 在函数内部声明的 static 变量在函数调用结束后不会销毁；2) 在类中声明的 static 成员变量属于类而非对象；3) 在函数外部声明的 static 函数只能在当前文件中访问。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的虚函数表（vtable）是什么？', '虚函数表是 C++ 用于实现动态多态的一种机制。', '["C++", "虚函数表"]', '虚函数表（vtable）是 C++ 用于实现动态多态的一种机制。每个包含虚函数的类都会有一个虚函数表，虚函数表保存了指向虚函数的指针，在运行时根据对象的类型动态调用相应的虚函数。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('C++ 中的多线程如何实现？', 'C++11 引入了 std::thread 类来支持多线程编程。', '["C++", "多线程"]', 'C++11 引入了 std::thread 类来实现多线程编程。可以通过 std::thread 创建新线程，并通过成员函数 join 和 detach 来管理线程的执行。', 1);
-- 将这些题目与 C++基础面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (7, 1, 1),
    (7, 2, 1),
    (7, 3, 1),
    (7, 4, 1),
    (7, 5, 1),
    (7, 6, 1),
    (7, 7, 1),
    (7, 8, 1),
    (7, 9, 1),
    (7, 10, 1),
    (7, 11, 1),
    (7, 12, 1),
    (7, 13, 1),
    (7, 14, 1),
    (7, 15, 1);
-- 创建题库：Python基础面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('Python基础面试题', '涵盖 Python 语言的基础知识、面向对象编程、函数、装饰器、生成器等，适用于 Python 开发岗位的面试准备', 1, 'https://cdn.pixabay.com/photo/2024/03/31/02/11/python-8665904_1280.png');
-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的列表和元组的区别是什么？', '列表是可变的，而元组是不可变的。', '["Python", "列表", "元组"]', '列表是可变的数据结构，可以修改其元素；而元组是不可变的数据结构，一旦创建，就不能修改其元素。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的深拷贝和浅拷贝的区别是什么？', '浅拷贝仅拷贝对象的引用，深拷贝拷贝对象的所有内容。', '["Python", "拷贝", "深拷贝", "浅拷贝"]', '浅拷贝只复制对象的引用，而不是对象本身，因此修改拷贝后的对象时，原对象也会受到影响；深拷贝会复制对象及其内部对象，避免了原对象的修改。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的装饰器是什么？', '装饰器是用于在运行时动态地修改函数或方法功能的函数。', '["Python", "装饰器"]', '装饰器是 Python 中的一种语法结构，它允许在不修改函数本身的情况下，动态地增加或修改函数的功能。常用于日志记录、性能监控等场景。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的生成器是什么？', '生成器是一个特殊的迭代器，使用 yield 关键字生成数据。', '["Python", "生成器"]', '生成器是 Python 中用于生成一系列值的函数。与常规函数不同，生成器使用 yield 语句返回值，每次调用生成器时，它会从上次返回的位置继续执行。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的迭代器和生成器的区别是什么？', '迭代器是可以迭代的对象，而生成器是实现了迭代器协议的对象。', '["Python", "迭代器", "生成器"]', '迭代器是实现了 __iter__ 和 __next__ 方法的对象，可以通过 for 循环进行遍历；生成器是一种特殊的迭代器，使用 yield 生成数据，生成器是惰性求值的。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的 lambda 函数是什么？', 'lambda 函数是匿名函数，通常用于简单的操作。', '["Python", "lambda"]', 'lambda 函数是 Python 中的一种匿名函数，通常用于简单的操作。其语法为：lambda 参数: 表达式。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的列表推导式是什么？', '列表推导式是用于生成新列表的简洁方法。', '["Python", "列表推导式"]', '列表推导式是一种简洁的语法，用于基于已有的可迭代对象生成新列表。其基本语法为：[expression for item in iterable if condition]。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的 GIL 是什么？', 'GIL（Global Interpreter Lock）是 CPython 中的全局解释器锁。', '["Python", "GIL"]', 'GIL（Global Interpreter Lock）是 Python 解释器中存在的一个锁，它使得 Python 程序在多线程中只能同时执行一个线程，这对 CPU 密集型任务有影响。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的装饰器如何工作？', '装饰器通过传递函数作为参数并返回一个新的函数来工作。', '["Python", "装饰器"]', '装饰器是一个函数，它接受另一个函数作为参数并返回一个新的函数。装饰器通常用于修改或扩展函数的行为。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的 self 参数是什么？', 'self 是类中方法的第一个参数，代表实例对象。', '["Python", "self"]', 'self 是 Python 类中方法的第一个参数，它指代当前实例对象。在类的方法中，self 可以访问该对象的属性和其他方法。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的类方法和静态方法的区别是什么？', '类方法和静态方法都可以通过类名访问，但它们的行为不同。', '["Python", "类方法", "静态方法"]', '类方法是通过 @classmethod 装饰器定义的，它的第一个参数是类本身；静态方法是通过 @staticmethod 装饰器定义的，它不依赖于类或实例，不能访问实例或类的属性。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的切片（slice）是什么？', '切片是通过指定开始、结束和步长来获取序列的子集。', '["Python", "切片"]', '切片是 Python 中的一种强大工具，它允许通过指定起始索引、结束索引和步长来提取序列的子集。语法为：sequence[start:end:step]。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的多态是什么？', '多态是面向对象编程中的一个重要特性，指的是不同类型的对象可以通过相同的接口调用不同的行为。', '["Python", "多态"]', '多态是 Python 中的一个面向对象特性，允许不同类型的对象调用同一接口并执行不同的行为。多态的实现依赖于继承和方法重写。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的异常处理机制是什么？', 'Python 提供了 try、except 和 finally 块来处理异常。', '["Python", "异常处理"]', 'Python 的异常处理通过 try、except 和 finally 块来处理。try 块中包含可能发生异常的代码，except 块用于处理异常，finally 块中的代码无论是否发生异常都会执行。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Python 中的上下文管理器是什么？', '上下文管理器是用于管理资源的对象，常用于 with 语句。', '["Python", "上下文管理器"]', '上下文管理器是用于管理资源的对象，它实现了 __enter__ 和 __exit__ 方法。通过 with 语句，可以确保资源在使用完后自动释放，无论是否发生异常。', 1);
-- 将这些题目与 Python基础面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (8, 1, 1),
    (8, 2, 1),
    (8, 3, 1),
    (8, 4, 1),
    (8, 5, 1),
    (8, 6, 1),
    (8, 7, 1),
    (8, 8, 1),
    (8, 9, 1),
    (8, 10, 1),
    (8, 11, 1),
    (8, 12, 1),
    (8, 13, 1),
    (8, 14, 1),
    (8, 15, 1);
-- 创建题库：设计模式面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('设计模式面试题', '涵盖常见的设计模式，适用于设计模式相关的面试准备，帮助理解并应用设计模式', 1, 'https://cdn.pixabay.com/photo/2020/09/14/20/40/laptop-5572120_1280.png');

-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是单例模式？', '单例模式确保一个类只有一个实例，并提供全局访问点。', '["设计模式", "单例模式"]', '单例模式是一种创建型设计模式，确保一个类只有一个实例，并提供一个全局访问点。通常通过私有构造函数和静态方法来实现。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是工厂方法模式？', '工厂方法模式定义一个创建对象的接口，但由子类决定实例化哪一个类。', '["设计模式", "工厂方法"]', '工厂方法模式是一种创建型设计模式，它定义了一个用于创建对象的接口，让子类决定实例化哪一个类。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是抽象工厂模式？', '抽象工厂模式提供一个创建一系列相关或依赖对象的接口。', '["设计模式", "抽象工厂模式"]', '抽象工厂模式是一种创建型设计模式，提供一个创建一系列相关或依赖对象的接口，而无需指定具体类。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是观察者模式？', '观察者模式定义了对象间的一对多依赖关系。', '["设计模式", "观察者模式"]', '观察者模式是一种行为型设计模式，它定义了对象间的一对多依赖关系，一个对象的状态改变时，所有依赖它的对象都会收到通知。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是策略模式？', '策略模式定义了一个算法族，并让它们可以互相替换。', '["设计模式", "策略模式"]', '策略模式是一种行为型设计模式，它定义了一个算法族，并让它们可以互相替换。策略模式让算法独立于使用它的客户而变化。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是模板方法模式？', '模板方法模式在一个方法中定义算法的骨架，并允许子类实现某些步骤。', '["设计模式", "模板方法模式"]', '模板方法模式是一种行为型设计模式，它在一个方法中定义算法的骨架，并允许子类实现某些步骤的具体细节。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是状态模式？', '状态模式允许一个对象在其内部状态改变时改变其行为。', '["设计模式", "状态模式"]', '状态模式是一种行为型设计模式，允许对象在其内部状态改变时改变其行为。状态模式的关键是状态的封装和外部状态的解耦。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是命令模式？', '命令模式将请求封装为一个对象，从而让用户使用不同的请求、队列或日志请求。', '["设计模式", "命令模式"]', '命令模式是一种行为型设计模式，将请求封装为一个对象，从而让用户使用不同的请求、队列或日志请求。该模式允许你将请求发出者与执行者解耦。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是代理模式？', '代理模式为其他对象提供一个代理，以控制对该对象的访问。', '["设计模式", "代理模式"]', '代理模式是一种结构型设计模式，它为其他对象提供一个代理，以控制对该对象的访问。代理模式通常用于懒加载、访问控制、日志等。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是适配器模式？', '适配器模式允许将一个接口转换为另一个接口，使得接口不兼容的类能够合作。', '["设计模式", "适配器模式"]', '适配器模式是一种结构型设计模式，它允许将一个接口转换为另一个接口，从而使得接口不兼容的类能够合作。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是桥接模式？', '桥接模式将抽象部分与实现部分分离，使得两者可以独立变化。', '["设计模式", "桥接模式"]', '桥接模式是一种结构型设计模式，它将抽象部分与实现部分分离，使得它们可以独立变化。桥接模式通常用于处理系统中可能有多个变化维度的情形。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是中介者模式？', '中介者模式定义了一个对象用于封装一系列对象交互，使得对象之间不需要直接交互。', '["设计模式", "中介者模式"]', '中介者模式是一种行为型设计模式，它通过引入一个中介者对象，来封装多个对象之间的交互，使得对象之间不直接通信，从而减少了对象之间的依赖。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是享元模式？', '享元模式通过共享对象来支持大量细粒度的对象，减少内存占用。', '["设计模式", "享元模式"]', '享元模式是一种结构型设计模式，它通过共享对象来支持大量细粒度的对象，减少内存占用。该模式适用于对象数量很多且大部分对象共享相同状态的场景。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是责任链模式？', '责任链模式将请求的发送者和接收者解耦，使多个对象都有机会处理请求。', '["设计模式", "责任链模式"]', '责任链模式是一种行为型设计模式，它将请求的发送者和接收者解耦，使多个对象都有机会处理请求。该模式用于避免请求发送者与接收者之间的直接耦合。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('什么是建造者模式？', '建造者模式将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。', '["设计模式", "建造者模式"]', '建造者模式是一种创建型设计模式，它将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。该模式通常用于构建复杂对象。', 1);
-- 将这些题目与 设计模式面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (9, 1, 1),
    (9, 2, 1),
    (9, 3, 1),
    (9, 4, 1),
    (9, 5, 1),
    (9, 6, 1),
    (9, 7, 1),
    (9, 8, 1),
    (9, 9, 1),
    (9, 10, 1),
    (9, 11, 1),
    (9, 12, 1),
    (9, 13, 1),
    (9, 14, 1),
    (9, 15, 1);
-- 创建题库：Linux面试题
INSERT INTO question_bank (title, description, userId, picture)
VALUES
    ('Linux面试题', '涵盖常见的 Linux 操作系统相关问题，适用于 Linux 系统管理员的面试准备', 1, 'https://cdn.pixabay.com/photo/2020/02/22/16/29/penguin-4871045_1280.png');
-- 创建第一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Linux 中如何查看当前正在运行的进程？', 'Linux 中查看进程的常用命令有哪些？', '["Linux", "进程管理"]', '使用 `ps` 命令查看当前进程，例如 `ps aux` 查看所有进程，`top` 命令可以实时查看系统进程。', 1);

-- 创建第二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何查看 Linux 系统的内存使用情况？', '如何查看系统的内存使用情况，命令是什么？', '["Linux", "内存管理"]', '可以使用 `free -h` 命令查看系统的内存使用情况。也可以使用 `top` 或 `htop` 查看内存使用的实时数据。', 1);

-- 创建第三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何检查 Linux 系统的磁盘空间使用情况？', '如何检查磁盘空间使用情况？', '["Linux", "磁盘管理"]', '可以使用 `df -h` 命令来查看磁盘空间的使用情况。对于详细的磁盘信息，可以使用 `du -sh` 命令。', 1);

-- 创建第四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Linux 如何查看网络接口的配置信息？', '如何查看 Linux 网络接口的信息？', '["Linux", "网络配置"]', '使用 `ifconfig` 或者 `ip addr` 命令查看当前的网络接口配置信息。', 1);

-- 创建第五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何在 Linux 中设置文件或目录的权限？', '如何修改 Linux 中文件的权限？', '["Linux", "文件权限"]', '可以使用 `chmod` 命令来修改文件的权限。例如：`chmod 755 file` 设置文件权限为 `rwxr-xr-x`。', 1);

-- 创建第六道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Linux 中如何创建软链接和硬链接？', '如何创建软链接和硬链接？', '["Linux", "文件管理"]', '使用 `ln -s` 创建软链接，`ln` 创建硬链接。例如：`ln -s /path/to/file link_name` 创建软链接。', 1);

-- 创建第七道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Linux 中如何切换用户？', '如何在 Linux 中切换到其他用户？', '["Linux", "用户管理"]', '使用 `su` 命令切换用户，`su -` 可切换到指定用户的登录环境。可以使用 `sudo` 命令执行管理员权限的操作。', 1);

-- 创建第八道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Linux 中如何查看文件的内容？', '如何查看文件内容？', '["Linux", "文件操作"]', '使用 `cat` 查看文件内容，`less` 和 `more` 可以分页查看文件内容，`head` 和 `tail` 用于查看文件的开头和结尾部分。', 1);

-- 创建第九道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何查看 Linux 中的当前时间和日期？', '如何查看系统的时间和日期？', '["Linux", "系统管理"]', '使用 `date` 命令查看当前的系统时间和日期，`timedatectl` 可以用于更复杂的时间和日期管理。', 1);

-- 创建第十道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何在 Linux 中启动和停止服务？', '如何启动和停止系统服务？', '["Linux", "服务管理"]', '在系统使用 `systemd` 的情况下，可以使用 `systemctl start service_name` 启动服务，`systemctl stop service_name` 停止服务。', 1);

-- 创建第十一道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何列出 Linux 中的所有用户？', '如何列出系统中所有用户？', '["Linux", "用户管理"]', '可以查看 `/etc/passwd` 文件，或者使用 `cat /etc/passwd` 来列出系统中的所有用户。', 1);

-- 创建第十二道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何在 Linux 中修改系统主机名？', '如何修改 Linux 系统的主机名？', '["Linux", "系统管理"]', '可以使用 `hostnamectl set-hostname new_hostname` 命令来修改系统主机名。修改后需要重启系统或者重新登录。', 1);

-- 创建第十三道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何在 Linux 中查找文件？', '如何查找文件或目录？', '["Linux", "文件查找"]', '使用 `find` 命令查找文件，例如 `find /path/to/search -name "filename"`。也可以使用 `locate` 命令快速查找。', 1);

-- 创建第十四道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('Linux 中如何查看系统的硬件信息？', '如何查看硬件信息，如 CPU、内存、硬盘等？', '["Linux", "硬件管理"]', '使用 `lscpu` 查看 CPU 信息，`lsblk` 查看磁盘信息，`free -h` 查看内存信息。', 1);

-- 创建第十五道题目
INSERT INTO question (title, content, tags, answer, userId)
VALUES
    ('如何在 Linux 中创建用户？', '如何在 Linux 中添加新的用户？', '["Linux", "用户管理"]', '使用 `useradd` 命令创建新用户，例如：`useradd newuser` 创建用户。可以使用 `passwd newuser` 设置用户密码。', 1);
-- 将这些题目与 Linux面试题 题库关联
INSERT INTO question_bank_question (questionBankId, questionId, userId)
VALUES
    (10, 1, 1),
    (10, 2, 1),
    (10, 3, 1),
    (10, 4, 1),
    (10, 5, 1),
    (10, 6, 1),
    (10, 7, 1),
    (10, 8, 1),
    (10, 9, 1),
    (10, 10, 1),
    (10, 11, 1),
    (10, 12, 1),
    (10, 13, 1),
    (10, 14, 1),
    (10, 15, 1);

