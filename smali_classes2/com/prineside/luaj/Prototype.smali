.class public Lcom/prineside/luaj/Prototype;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation


# static fields
.field public static final a:[Lcom/prineside/luaj/Upvaldesc;

.field public static final b:[Lcom/prineside/luaj/Prototype;


# instance fields
.field public code:[I

.field public is_vararg:I

.field public k:[Lcom/prineside/luaj/LuaValue;

.field public lastlinedefined:I

.field public linedefined:I

.field public lineinfo:[I

.field public locvars:[Lcom/prineside/luaj/LocVars;

.field public maxstacksize:I

.field public numparams:I

.field public p:[Lcom/prineside/luaj/Prototype;

.field public source:Lcom/prineside/luaj/LuaString;

.field public upvalues:[Lcom/prineside/luaj/Upvaldesc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/prineside/luaj/Upvaldesc;

    sput-object v1, Lcom/prineside/luaj/Prototype;->a:[Lcom/prineside/luaj/Upvaldesc;

    new-array v0, v0, [Lcom/prineside/luaj/Prototype;

    sput-object v0, Lcom/prineside/luaj/Prototype;->b:[Lcom/prineside/luaj/Prototype;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/luaj/Prototype;->b:[Lcom/prineside/luaj/Prototype;

    iput-object v0, p0, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    sget-object v0, Lcom/prineside/luaj/Prototype;->a:[Lcom/prineside/luaj/Upvaldesc;

    iput-object v0, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/luaj/Prototype;->b:[Lcom/prineside/luaj/Prototype;

    iput-object v0, p0, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    new-array p1, p1, [Lcom/prineside/luaj/Upvaldesc;

    iput-object p1, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    return-void
.end method


# virtual methods
.method public getlocalname(II)Lcom/prineside/luaj/LuaString;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget v2, v1, Lcom/prineside/luaj/LocVars;->startpc:I

    if-gt v2, p2, :cond_1

    iget v2, v1, Lcom/prineside/luaj/LocVars;->endpc:I

    if-ge p2, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    iget-object p1, v1, Lcom/prineside/luaj/LocVars;->varname:Lcom/prineside/luaj/LuaString;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, [I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/prineside/luaj/LuaValue;

    iput-object v1, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/prineside/luaj/Prototype;->code:[I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/prineside/luaj/Prototype;

    iput-object v1, p0, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/luaj/LocVars;

    iput-object v0, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/luaj/Upvaldesc;

    iput-object v0, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    const-class v0, Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaString;

    iput-object p1, p0, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/Prototype;->numparams:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/Prototype;->is_vararg:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    return-void
.end method

.method public shortsource()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u001b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "binary string"

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    const-class v0, [I

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    iget-object v2, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v1, p1, p2, v2}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Lcom/prineside/luaj/LuaValue;)V

    iget-object v1, p0, Lcom/prineside/luaj/Prototype;->code:[I

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    const-class v1, Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget p1, p0, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/luaj/Prototype;->numparams:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/luaj/Prototype;->is_vararg:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
