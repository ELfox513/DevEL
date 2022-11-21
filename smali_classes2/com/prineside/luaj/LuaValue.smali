.class public abstract Lcom/prineside/luaj/LuaValue;
.super Lcom/prineside/luaj/Varargs;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/LuaValue$NillableSerializer;,
        Lcom/prineside/luaj/LuaValue$None;
    }
.end annotation


# static fields
.field public static final ADD:Lcom/prineside/luaj/LuaString;

.field public static final CALL:Lcom/prineside/luaj/LuaString;

.field public static final CONCAT:Lcom/prineside/luaj/LuaString;

.field public static final DIV:Lcom/prineside/luaj/LuaString;

.field public static final EMPTYSTRING:Lcom/prineside/luaj/LuaString;

.field public static ENV:Lcom/prineside/luaj/LuaString; = null

.field public static final EQ:Lcom/prineside/luaj/LuaString;

.field public static final FALSE:Lcom/prineside/luaj/LuaBoolean;

.field public static final INDEX:Lcom/prineside/luaj/LuaString;

.field public static final LE:Lcom/prineside/luaj/LuaString;

.field public static final LEN:Lcom/prineside/luaj/LuaString;

.field public static final LT:Lcom/prineside/luaj/LuaString;

.field public static final METATABLE:Lcom/prineside/luaj/LuaString;

.field public static final MINUSONE:Lcom/prineside/luaj/LuaNumber;

.field public static final MOD:Lcom/prineside/luaj/LuaString;

.field public static final MODE:Lcom/prineside/luaj/LuaString;

.field public static final MUL:Lcom/prineside/luaj/LuaString;

.field public static final NEWINDEX:Lcom/prineside/luaj/LuaString;

.field public static final NIL:Lcom/prineside/luaj/LuaValue;

.field public static final NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

.field public static final NILS:[Lcom/prineside/luaj/LuaValue;

.field public static final NONE:Lcom/prineside/luaj/LuaValue;

.field public static final NOVALS:[Lcom/prineside/luaj/LuaValue;

.field public static final ONE:Lcom/prineside/luaj/LuaNumber;

.field public static final POW:Lcom/prineside/luaj/LuaString;

.field public static final SUB:Lcom/prineside/luaj/LuaString;

.field public static final TBOOLEAN:I = 0x1

.field public static final TFUNCTION:I = 0x6

.field public static final TINT:I = -0x2

.field public static final TLIGHTUSERDATA:I = 0x2

.field public static final TNIL:I = 0x0

.field public static final TNONE:I = -0x1

.field public static final TNUMBER:I = 0x3

.field public static final TOSTRING:Lcom/prineside/luaj/LuaString;

.field public static final TRUE:Lcom/prineside/luaj/LuaBoolean;

.field public static final TSTRING:I = 0x4

.field public static final TTABLE:I = 0x5

.field public static final TTHREAD:I = 0x8

.field public static final TUSERDATA:I = 0x7

.field public static final TVALUE:I = 0x9

.field public static final TYPE_NAMES:[Ljava/lang/String;

.field public static final UNM:Lcom/prineside/luaj/LuaString;

.field public static final ZERO:Lcom/prineside/luaj/LuaNumber;

.field public static a:I

.field public static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prineside/luaj/Varargs$PairVarargs;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prineside/luaj/Varargs$ArrayVarargs;",
            ">;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prineside/luaj/Varargs$ArrayVarargs;",
            ">;"
        }
    .end annotation
.end field

.field public static q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prineside/luaj/Varargs$ArrayVarargs;",
            ">;"
        }
    .end annotation
.end field

.field public static r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prineside/luaj/Varargs$ArrayVarargs;",
            ">;"
        }
    .end annotation
.end field

.field public static s:Lcom/prineside/luaj/LuaDouble;

.field public static t:Lcom/prineside/luaj/LuaInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/prineside/luaj/LuaValue$NillableSerializer;

    invoke-direct {v0}, Lcom/prineside/luaj/LuaValue$NillableSerializer;-><init>()V

    sput-object v0, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nil"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "boolean"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "lightuserdata"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "number"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "string"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "table"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "function"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "userdata"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "thread"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v4, "value"

    aput-object v4, v0, v1

    sput-object v0, Lcom/prineside/luaj/LuaValue;->TYPE_NAMES:[Ljava/lang/String;

    sget-object v0, Lcom/prineside/luaj/LuaNil;->u:Lcom/prineside/luaj/LuaNil;

    sput-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    sget-object v0, Lcom/prineside/luaj/LuaBoolean;->u:Lcom/prineside/luaj/LuaBoolean;

    sput-object v0, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    sget-object v0, Lcom/prineside/luaj/LuaBoolean;->w:Lcom/prineside/luaj/LuaBoolean;

    sput-object v0, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    sget-object v0, Lcom/prineside/luaj/LuaValue$None;->w:Lcom/prineside/luaj/LuaValue$None;

    sput-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-static {v2}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    invoke-static {v3}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->ONE:Lcom/prineside/luaj/LuaNumber;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->MINUSONE:Lcom/prineside/luaj/LuaNumber;

    new-array v0, v2, [Lcom/prineside/luaj/LuaValue;

    sput-object v0, Lcom/prineside/luaj/LuaValue;->NOVALS:[Lcom/prineside/luaj/LuaValue;

    const-string v0, "_ENV"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->ENV:Lcom/prineside/luaj/LuaString;

    const-string v0, "__index"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->INDEX:Lcom/prineside/luaj/LuaString;

    const-string v0, "__newindex"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->NEWINDEX:Lcom/prineside/luaj/LuaString;

    const-string v0, "__call"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->CALL:Lcom/prineside/luaj/LuaString;

    const-string v0, "__mode"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->MODE:Lcom/prineside/luaj/LuaString;

    const-string v0, "__metatable"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->METATABLE:Lcom/prineside/luaj/LuaString;

    const-string v0, "__add"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->ADD:Lcom/prineside/luaj/LuaString;

    const-string v0, "__sub"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->SUB:Lcom/prineside/luaj/LuaString;

    const-string v0, "__div"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->DIV:Lcom/prineside/luaj/LuaString;

    const-string v0, "__mul"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->MUL:Lcom/prineside/luaj/LuaString;

    const-string v0, "__pow"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->POW:Lcom/prineside/luaj/LuaString;

    const-string v0, "__mod"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->MOD:Lcom/prineside/luaj/LuaString;

    const-string v0, "__unm"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->UNM:Lcom/prineside/luaj/LuaString;

    const-string v0, "__len"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->LEN:Lcom/prineside/luaj/LuaString;

    const-string v0, "__eq"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->EQ:Lcom/prineside/luaj/LuaString;

    const-string v0, "__lt"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->LT:Lcom/prineside/luaj/LuaString;

    const-string v0, "__le"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->LE:Lcom/prineside/luaj/LuaString;

    const-string v0, "__tostring"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->TOSTRING:Lcom/prineside/luaj/LuaString;

    const-string v0, "__concat"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->CONCAT:Lcom/prineside/luaj/LuaString;

    const-string v0, ""

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->EMPTYSTRING:Lcom/prineside/luaj/LuaString;

    const/16 v0, 0xfa

    sput v0, Lcom/prineside/luaj/LuaValue;->a:I

    new-array v0, v0, [Lcom/prineside/luaj/LuaValue;

    sput-object v0, Lcom/prineside/luaj/LuaValue;->NILS:[Lcom/prineside/luaj/LuaValue;

    :goto_0
    sget v0, Lcom/prineside/luaj/LuaValue;->a:I

    if-ge v2, v0, :cond_0

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NILS:[Lcom/prineside/luaj/LuaValue;

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    return-void
.end method

.method public static argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assert_(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/prineside/luaj/LuaError;

    invoke-direct {p0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cachedDouble(D)Lcom/prineside/luaj/LuaDouble;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->s:Lcom/prineside/luaj/LuaDouble;

    if-nez v0, :cond_0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaDouble;

    sput-object v0, Lcom/prineside/luaj/LuaValue;->s:Lcom/prineside/luaj/LuaDouble;

    :cond_0
    sget-object v0, Lcom/prineside/luaj/LuaValue;->s:Lcom/prineside/luaj/LuaDouble;

    iput-wide p0, v0, Lcom/prineside/luaj/LuaDouble;->u:D

    return-object v0
.end method

.method public static cachedInt(I)Lcom/prineside/luaj/LuaInteger;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->t:Lcom/prineside/luaj/LuaInteger;

    if-nez v0, :cond_0

    const/16 v0, 0x2329

    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaValue;->t:Lcom/prineside/luaj/LuaInteger;

    :cond_0
    sget-object v0, Lcom/prineside/luaj/LuaValue;->t:Lcom/prineside/luaj/LuaInteger;

    iput p0, v0, Lcom/prineside/luaj/LuaInteger;->v:I

    return-object v0
.end method

.method public static cachedVarargsOf(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    return-object p0
.end method

.method public static cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs$PairVarargs;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/Varargs$PairVarargs;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/prineside/luaj/LuaValue;->b:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    iput-object p0, v0, Lcom/prineside/luaj/Varargs$PairVarargs;->v1:Lcom/prineside/luaj/LuaValue;

    iput-object p1, v0, Lcom/prineside/luaj/Varargs$PairVarargs;->v2:Lcom/prineside/luaj/Varargs;

    :goto_1
    return-object v0
.end method

.method public static cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 5

    sget-object v0, Lcom/prineside/luaj/LuaValue;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/prineside/luaj/LuaValue;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, v4, p0}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/prineside/luaj/LuaValue;->d:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    :goto_1
    return-object v0
.end method

.method public static cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 6

    sget-object v0, Lcom/prineside/luaj/LuaValue;->k:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/prineside/luaj/LuaValue;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, v5, p0}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/prineside/luaj/LuaValue;->k:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    :goto_1
    return-object v0
.end method

.method public static cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 7

    sget-object v0, Lcom/prineside/luaj/LuaValue;->q:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/prineside/luaj/LuaValue;

    aput-object p0, v6, v5

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    aput-object p3, v6, v2

    aput-object p4, v6, v1

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, v6, p0}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/prineside/luaj/LuaValue;->k:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    aput-object p0, v6, v5

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    aput-object p3, v6, v2

    aput-object p4, v6, v1

    :goto_1
    return-object v0
.end method

.method public static cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 8

    sget-object v0, Lcom/prineside/luaj/LuaValue;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/prineside/luaj/LuaValue;

    aput-object p0, v7, v6

    aput-object p1, v7, v5

    aput-object p2, v7, v4

    aput-object p3, v7, v3

    aput-object p4, v7, v2

    aput-object p5, v7, v1

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, v7, p0}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/prineside/luaj/LuaValue;->k:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    aput-object p0, v7, v6

    aput-object p1, v7, v5

    aput-object p2, v7, v4

    aput-object p3, v7, v3

    aput-object p4, v7, v2

    aput-object p5, v7, v1

    :goto_1
    return-object v0
.end method

.method public static final eqmtcall(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->EQ:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, v0}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaError;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prineside/luaj/LuaValue;->INDEX:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    sget-object v1, Lcom/prineside/luaj/LuaValue;->INDEX:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/LuaValue;->l(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isfunction()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p0, p1}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const/16 p0, 0x64

    if-lt v0, p0, :cond_5

    const-string p0, "loop in gettable"

    invoke-static {p0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p0

    :cond_5
    move-object p0, v1

    goto :goto_0
.end method

.method public static listOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Lcom/prineside/luaj/LuaTable;-><init>([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0
.end method

.method public static listOf([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaTable;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/prineside/luaj/LuaTable;-><init>([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0
.end method

.method public static m(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Metatable;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "metatableOf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LuaValue"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/luaj/LuaValue;->MODE:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mode string "

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x76

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Lcom/prineside/luaj/WeakTable;

    invoke-direct {v0, v1, v2, p0}, Lcom/prineside/luaj/WeakTable;-><init>(ZZLcom/prineside/luaj/LuaValue;)V

    return-object v0

    :cond_3
    check-cast p0, Lcom/prineside/luaj/LuaTable;

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    new-instance v0, Lcom/prineside/luaj/NonTableMetatable;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/NonTableMetatable;-><init>(Lcom/prineside/luaj/LuaValue;)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prineside/luaj/LuaValue;->NEWINDEX:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return v3

    :cond_1
    sget-object v2, Lcom/prineside/luaj/LuaValue;->NEWINDEX:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isfunction()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    return v3

    :cond_3
    add-int/2addr v1, v3

    const/16 p0, 0x64

    if-lt v1, p0, :cond_4

    const-string p0, "loop in settable"

    invoke-static {p0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return v0

    :cond_4
    move-object p0, v2

    goto :goto_0

    :cond_5
    new-instance p2, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "table expected for set index (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\') value, got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public static tableOf()Lcom/prineside/luaj/LuaTable;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v0}, Lcom/prineside/luaj/LuaTable;-><init>()V

    return-object v0
.end method

.method public static tableOf(II)Lcom/prineside/luaj/LuaTable;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaTable;-><init>(II)V

    return-object v0
.end method

.method public static tableOf(Lcom/prineside/luaj/Varargs;I)Lcom/prineside/luaj/LuaTable;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaTable;-><init>(Lcom/prineside/luaj/Varargs;I)V

    return-object v0
.end method

.method public static tableOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/prineside/luaj/LuaTable;-><init>([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0
.end method

.method public static tableOf([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/prineside/luaj/LuaTable;-><init>([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0
.end method

.method public static tableOf([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaTable;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v0, p0, p1, p2}, Lcom/prineside/luaj/LuaTable;-><init>([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0
.end method

.method public static tailcallOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/TailcallVarargs;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/TailcallVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0
.end method

.method public static userdataOf(Ljava/lang/Object;)Lcom/prineside/luaj/LuaUserdata;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaUserdata;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/LuaUserdata;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static userdataOf(Ljava/lang/Object;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaUserdata;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaUserdata;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaUserdata;-><init>(Ljava/lang/Object;Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method

.method public static valueOf(Z)Lcom/prineside/luaj/LuaBoolean;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p0
.end method

.method public static valueOf(I)Lcom/prineside/luaj/LuaInteger;
    .locals 0

    invoke-static {p0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(D)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-static {p0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([B)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-static {p0}, Lcom/prineside/luaj/LuaString;->valueOf([B)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([BII)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/LuaString;->valueOf([BII)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    invoke-virtual {p2}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/prineside/luaj/LuaValue;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-direct {v0, v2, v3, v1, p2}, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;-><init>([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_0
    new-instance p2, Lcom/prineside/luaj/Varargs$PairVarargs;

    invoke-direct {p2, p0, p1}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object p2
.end method

.method public static varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/luaj/Varargs$PairVarargs;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 4

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/prineside/luaj/Varargs$PairVarargs;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_1
    aget-object p0, p0, v1

    return-object p0

    :cond_2
    sget-object p0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p0
.end method

.method public static varargsOf([Lcom/prineside/luaj/LuaValue;II)Lcom/prineside/luaj/Varargs;
    .locals 2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;-><init>([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_0
    new-instance p2, Lcom/prineside/luaj/Varargs$PairVarargs;

    add-int/lit8 v1, p1, 0x0

    aget-object v1, p0, v1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-direct {p2, v1, p0}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object p2

    :cond_1
    aget-object p0, p0, p1

    return-object p0

    :cond_2
    sget-object p0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p0
.end method

.method public static varargsOf([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;-><init>([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;-><init>([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/prineside/luaj/Varargs$PairVarargs;

    aget-object p3, p0, p1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-direct {p2, p3, p0}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p3}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result p2

    if-lez p2, :cond_3

    new-instance p2, Lcom/prineside/luaj/Varargs$PairVarargs;

    aget-object p0, p0, p1

    invoke-direct {p2, p0, p3}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    goto :goto_1

    :cond_3
    aget-object p2, p0, p1

    :goto_1
    return-object p2

    :cond_4
    return-object p3
.end method

.method public static varargsOf([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    array-length v0, p0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/prineside/luaj/Varargs$PairVarargs;

    aget-object p1, p0, v2

    aget-object p0, p0, v1

    invoke-direct {v0, p1, p0}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/prineside/luaj/Varargs$PairVarargs;

    aget-object p0, p0, v2

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    goto :goto_1

    :cond_3
    aget-object v0, p0, v2

    :goto_1
    return-object v0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public add(D)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->ADD:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaValue;->f(Lcom/prineside/luaj/LuaValue;D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->add(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->ADD:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->e(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public and(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected, got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buffer()Lcom/prineside/luaj/Buffer;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/Buffer;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/Buffer;-><init>(Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method

.method public c()Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call()Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->g()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->g()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->g()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->g()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/prineside/luaj/LuaValue;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->invoke([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checkboolean()Z
    .locals 1

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public checkclosure()Lcom/prineside/luaj/LuaClosure;
    .locals 1

    const-string v0, "closure"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkdouble()D
    .locals 2

    const-string v0, "number"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkfunction()Lcom/prineside/luaj/LuaFunction;
    .locals 1

    const-string v0, "function"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkglobals()Lcom/prineside/luaj/Globals;
    .locals 1

    const-string v0, "globals"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkint()I
    .locals 1

    const-string v0, "int"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public checkinteger()Lcom/prineside/luaj/LuaInteger;
    .locals 1

    const-string v0, "integer"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkjstring()Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checklong()J
    .locals 2

    const-string v0, "long"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checknotnil()Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public checknumber()Lcom/prineside/luaj/LuaNumber;
    .locals 1

    const-string v0, "number"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checknumber(Ljava/lang/String;)Lcom/prineside/luaj/LuaNumber;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaError;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkstring()Lcom/prineside/luaj/LuaString;
    .locals 1

    const-string v0, "string"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checktable()Lcom/prineside/luaj/LuaTable;
    .locals 1

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkthread()Lcom/prineside/luaj/LuaThread;
    .locals 1

    const-string v0, "thread"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkuserdata()Ljava/lang/Object;
    .locals 1

    const-string v0, "userdata"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const-string p1, "userdata"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, p1}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/luaj/LuaValue;->LE:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaString;->raweq(Lcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LT:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1, p2, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->not()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to compare "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-virtual {v0, p0, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concat(Lcom/prineside/luaj/Buffer;)Lcom/prineside/luaj/Buffer;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/Buffer;->concatTo(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concat(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->concatmt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->concatmt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->concatmt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->concatmt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatmt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    sget-object v0, Lcom/prineside/luaj/LuaValue;->CONCAT:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to concatenate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-virtual {v1, p0, p1}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public div(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "div"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "div"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->DIV:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->e(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public divInto(D)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->DIV:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaValue;->f(Lcom/prineside/luaj/LuaValue;D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-virtual {v0, p0, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public eq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lcom/prineside/luaj/LuaValue;D)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on number and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-static {p2, p3}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/prineside/luaj/LuaValue;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->CALL:Lcom/prineside/luaj/LuaString;

    const-string v1, "attempt to call "

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->h(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaValue;->j(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public getmetatable()Lcom/prineside/luaj/LuaValue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public gt(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LE:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt_b(D)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(I)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LE:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public gteq(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gteq(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v0

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Z)Lcom/prineside/luaj/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

.method public gteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LT:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gteq_b(D)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(I)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LT:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public h(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "a "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inext(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    const-string p1, "table"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->o(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public initupvalue1(Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    return-void
.end method

.method public invoke()Lcom/prineside/luaj/Varargs;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->g()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Ljava/lang/String;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Ljava/lang/String;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Ljava/lang/String;[Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public isboolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isclosure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isfunction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isinttype()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public islong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isnil()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isnumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isstring()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public istable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isthread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isuserdata()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isuserdata(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isvalidkey()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal operation \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to index ? (a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value) with key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public len()Lcom/prineside/luaj/LuaValue;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LEN:Lcom/prineside/luaj/LuaString;

    const-string v1, "attempt to get length of "

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->h(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->len()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    return v0
.end method

.method public load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->EMPTYSTRING:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LT:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt_b(D)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(I)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LT:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public lteq(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LE:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq_b(D)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(I)Z
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->i(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LE:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->comparemt(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->getmetatable()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "mod"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "mod"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->MOD:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->e(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public modFrom(D)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->MOD:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaValue;->f(Lcom/prineside/luaj/LuaValue;D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->MUL:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaValue;->f(Lcom/prineside/luaj/LuaValue;D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->mul(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->MUL:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->e(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public narg()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public neg()Lcom/prineside/luaj/LuaValue;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->UNM:Lcom/prineside/luaj/LuaString;

    const-string v1, "attempt to perform arithmetic on "

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->h(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public neq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public neq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    const-string p1, "table"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->o(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public not()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected, got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInvoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public optboolean(Z)Z
    .locals 0

    const-string p1, "boolean"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public optclosure(Lcom/prineside/luaj/LuaClosure;)Lcom/prineside/luaj/LuaClosure;
    .locals 0

    const-string p1, "closure"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optdouble(D)D
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public optfunction(Lcom/prineside/luaj/LuaFunction;)Lcom/prineside/luaj/LuaFunction;
    .locals 0

    const-string p1, "function"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optint(I)I
    .locals 0

    const-string p1, "int"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public optinteger(Lcom/prineside/luaj/LuaInteger;)Lcom/prineside/luaj/LuaInteger;
    .locals 0

    const-string p1, "integer"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "String"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optlong(J)J
    .locals 0

    const-string p1, "long"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public optnumber(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    const-string p1, "number"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optstring(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;
    .locals 0

    const-string p1, "string"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public opttable(Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaTable;
    .locals 0

    const-string p1, "table"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optthread(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/LuaThread;
    .locals 0

    const-string p1, "thread"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optuserdata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p1, "object"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optvalue(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public or(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public p(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not implemented for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pow(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "pow"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "pow"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->POW:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->e(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(D)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->POW:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaValue;->f(Lcom/prineside/luaj/LuaValue;D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->powWith(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public presize(I)V
    .locals 0

    const-string p1, "table"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->o(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public raweq(D)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public raweq(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lcom/prineside/luaj/LuaString;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lcom/prineside/luaj/LuaUserdata;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public rawget(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "rawget"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->p(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawget(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawlen()I
    .locals 1

    const-string v0, "table or string"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->o(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public rawset(ILcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public rawset(ILjava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->rawset(ILcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    const-string p1, "rawset"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->p(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public rawset(Ljava/lang/String;D)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public rawset(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public rawset(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public rawset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public rawsetlist(ILcom/prineside/luaj/Varargs;)V
    .locals 4

    invoke-virtual {p2}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/prineside/luaj/LuaValue;->rawset(ILcom/prineside/luaj/LuaValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(ILcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(ILcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->n(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z

    return-void
.end method

.method public set(Ljava/lang/String;D)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public setmetatable(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "table"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public strcmp(Lcom/prineside/luaj/LuaString;)I
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attempt to compare "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public strcmp(Lcom/prineside/luaj/LuaValue;)I
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attempt to compare "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public strongvalue()Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public strvalue()Lcom/prineside/luaj/LuaString;
    .locals 1

    const-string v0, "string or number"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->o(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public sub(D)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "sub"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public sub(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "sub"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->d(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->SUB:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaValue;->e(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(D)Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->SUB:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaValue;->f(Lcom/prineside/luaj/LuaValue;D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->subFrom(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-le p1, v0, :cond_1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_1
    const-string p1, "start must be > 0"

    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public testfor_b(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->gt_b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->lteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->gteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toboolean()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tobyte()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tochar()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public todouble()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public tofloat()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toint()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public tonumber()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public toshort()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tostring()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public touserdata()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public touserdata(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract type()I
.end method

.method public abstract typename()Ljava/lang/String;
.end method
