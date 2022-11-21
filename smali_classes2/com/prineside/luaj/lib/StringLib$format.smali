.class public final Lcom/prineside/luaj/lib/StringLib$format;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "format"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/StringLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/StringLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/StringLib$format;->x:Lcom/prineside/luaj/lib/StringLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/StringLib;Lcom/prineside/luaj/lib/StringLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/StringLib$format;-><init>(Lcom/prineside/luaj/lib/StringLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    new-instance v3, Lcom/prineside/luaj/Buffer;

    invoke-direct {v3, v2}, Lcom/prineside/luaj/Buffer;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v4

    const/16 v6, 0xa

    if-eq v4, v6, :cond_8

    const/16 v6, 0x25

    if-eq v4, v6, :cond_0

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_1

    :cond_0
    if-ge v5, v2, :cond_9

    invoke-virtual {v1, v5}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v6}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    new-instance v4, Lcom/prineside/luaj/lib/StringLib$FormatDesc;

    iget-object v6, p0, Lcom/prineside/luaj/lib/StringLib$format;->x:Lcom/prineside/luaj/lib/StringLib;

    invoke-direct {v4, p1, v1, v5, v6}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;-><init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;ILcom/prineside/luaj/lib/StringLib;)V

    iget v6, v4, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->length:I

    add-int/2addr v5, v6

    iget v6, v4, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->conversion:I

    const/16 v7, 0x45

    if-eq v6, v7, :cond_7

    const/16 v7, 0x47

    if-eq v6, v7, :cond_7

    const/16 v7, 0x58

    if-eq v6, v7, :cond_6

    const/16 v7, 0x69

    if-eq v6, v7, :cond_5

    const/16 v7, 0x6f

    if-eq v6, v7, :cond_6

    const/16 v7, 0x71

    if-eq v6, v7, :cond_4

    const/16 v7, 0x73

    if-eq v6, v7, :cond_2

    const/16 v7, 0x75

    if-eq v6, v7, :cond_6

    const/16 v7, 0x78

    if-eq v6, v7, :cond_6

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid option \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->conversion:I

    int-to-char v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\' to \'format\'"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v4, v3, v6}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->format(Lcom/prineside/luaj/Buffer;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v6

    iget v7, v4, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->g:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v6}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_3

    invoke-virtual {v3, v6}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v3, v6}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->format(Lcom/prineside/luaj/Buffer;Lcom/prineside/luaj/LuaString;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prineside/luaj/lib/StringLib;->s(Lcom/prineside/luaj/Buffer;Lcom/prineside/luaj/LuaString;)V

    goto :goto_1

    :cond_5
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checklong(I)J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->format(Lcom/prineside/luaj/Buffer;J)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checklong(I)J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->format(Lcom/prineside/luaj/Buffer;J)V

    goto :goto_1

    :cond_7
    :pswitch_2
    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkdouble(I)D

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->format(Lcom/prineside/luaj/Buffer;D)V

    goto :goto_1

    :cond_8
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    :cond_9
    :goto_1
    move v4, v5

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Lcom/prineside/luaj/Buffer;->tostring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/StringLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/StringLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/StringLib$format;->x:Lcom/prineside/luaj/lib/StringLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$format;->x:Lcom/prineside/luaj/lib/StringLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
