.class public final Lcom/prineside/luaj/lib/IoLib$IoLibV;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/IoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IoLibV"
.end annotation


# instance fields
.field public iolib:Lcom/prineside/luaj/lib/IoLib;

.field public x:Lcom/prineside/luaj/lib/IoLib$File;

.field public y:Z

.field public z:Lcom/prineside/luaj/Varargs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;ILcom/prineside/luaj/lib/IoLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->x:Lcom/prineside/luaj/lib/IoLib$File;

    iput-object p2, p0, Lcom/prineside/luaj/lib/LibFunction;->w:Ljava/lang/String;

    iput p3, p0, Lcom/prineside/luaj/lib/LibFunction;->u:I

    iput-object p4, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;ILcom/prineside/luaj/lib/IoLib;ZLcom/prineside/luaj/Varargs;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/lib/IoLib$IoLibV;-><init>(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;ILcom/prineside/luaj/lib/IoLib;)V

    iput-boolean p5, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->y:Z

    invoke-virtual {p6}, Lcom/prineside/luaj/Varargs;->dealias()Lcom/prineside/luaj/Varargs;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->z:Lcom/prineside/luaj/Varargs;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 5

    :try_start_0
    iget v0, p0, Lcom/prineside/luaj/lib/LibFunction;->u:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    const-string v2, "r"

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->x:Lcom/prineside/luaj/lib/IoLib$File;

    iget-boolean v1, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->y:Z

    iget-object v2, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->z:Lcom/prineside/luaj/Varargs;

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/luaj/lib/IoLib;->_lines_iter(Lcom/prineside/luaj/LuaValue;ZLcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_index(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/lib/IoLib;->_file_write(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {p1, v1, v4}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/prineside/luaj/lib/IoLib;->_file_setvbuf(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    const-string v3, "cur"

    invoke-virtual {p1, v4, v3}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/prineside/luaj/lib/IoLib;->_file_seek(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/lib/IoLib;->_file_read(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_file_lines(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_file_flush(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_file_close(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_9
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_write(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_a
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_type(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/IoLib;->_io_tmpfile()Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_c
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_read(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_d
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v2}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_popen(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_e
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_output(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_f
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v2}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_open(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_10
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_lines(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_11
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_input(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_12
    iget-object p1, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/IoLib;->_io_flush()Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_13
    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->_io_close(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :catch_0
    move-exception p1

    iget v0, p0, Lcom/prineside/luaj/lib/LibFunction;->u:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->u(Ljava/lang/Exception;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    return-void
.end method
