.class public final Lcom/android/dx/dex/file/ValueEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VALUE_ANNOTATION:I = 0x1d

.field private static final VALUE_ARRAY:I = 0x1c

.field private static final VALUE_BOOLEAN:I = 0x1f

.field private static final VALUE_BYTE:I = 0x0

.field private static final VALUE_CHAR:I = 0x3

.field private static final VALUE_DOUBLE:I = 0x11

.field private static final VALUE_ENUM:I = 0x1b

.field private static final VALUE_FIELD:I = 0x19

.field private static final VALUE_FLOAT:I = 0x10

.field private static final VALUE_INT:I = 0x4

.field private static final VALUE_LONG:I = 0x6

.field private static final VALUE_METHOD:I = 0x1a

.field private static final VALUE_METHOD_HANDLE:I = 0x16

.field private static final VALUE_METHOD_TYPE:I = 0x15

.field private static final VALUE_NULL:I = 0x1e

.field private static final VALUE_SHORT:I = 0x2

.field private static final VALUE_STRING:I = 0x17

.field private static final VALUE_TYPE:I = 0x18


# instance fields
.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final out:Lb2/a;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    iput-object p2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lv1/a;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    invoke-virtual {p1}, Lv1/a;->B()Lx1/e0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lx1/e0;)Lcom/android/dx/dex/file/TypeIdItem;

    invoke-virtual {p1}, Lv1/a;->A()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/e;

    invoke-virtual {v0}, Lv1/e;->d()Lx1/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;

    invoke-virtual {v0}, Lv1/e;->f()Lx1/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lx1/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lx1/a;)V
    .locals 3

    instance-of v0, p1, Lx1/c;

    if-eqz v0, :cond_0

    check-cast p1, Lx1/c;

    invoke-virtual {p1}, Lx1/c;->n()Lv1/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lv1/a;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lx1/d;

    if-eqz v0, :cond_1

    check-cast p1, Lx1/d;

    invoke-virtual {p1}, Lx1/d;->n()Lx1/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lx1/d$a;->get(I)Lx1/a;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lx1/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/DexFile;->l(Lx1/a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static constantToHuman(Lx1/a;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lx1/a;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lx1/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static constantToValueType(Lx1/a;)I
    .locals 1

    instance-of v0, p0, Lx1/g;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lx1/c0;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Lx1/k;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Lx1/p;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Lx1/w;

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    instance-of v0, p0, Lx1/o;

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    instance-of v0, p0, Lx1/l;

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    instance-of v0, p0, Lx1/b0;

    if-eqz v0, :cond_7

    const/16 p0, 0x15

    return p0

    :cond_7
    instance-of v0, p0, Lx1/y;

    if-eqz v0, :cond_8

    const/16 p0, 0x16

    return p0

    :cond_8
    instance-of v0, p0, Lx1/d0;

    if-eqz v0, :cond_9

    const/16 p0, 0x17

    return p0

    :cond_9
    instance-of v0, p0, Lx1/e0;

    if-eqz v0, :cond_a

    const/16 p0, 0x18

    return p0

    :cond_a
    instance-of v0, p0, Lx1/n;

    if-eqz v0, :cond_b

    const/16 p0, 0x19

    return p0

    :cond_b
    instance-of v0, p0, Lx1/z;

    if-eqz v0, :cond_c

    const/16 p0, 0x1a

    return p0

    :cond_c
    instance-of v0, p0, Lx1/m;

    if-eqz v0, :cond_d

    const/16 p0, 0x1b

    return p0

    :cond_d
    instance-of v0, p0, Lx1/d;

    if-eqz v0, :cond_e

    const/16 p0, 0x1c

    return p0

    :cond_e
    instance-of v0, p0, Lx1/c;

    if-eqz v0, :cond_f

    const/16 p0, 0x1d

    return p0

    :cond_f
    instance-of v0, p0, Lx1/s;

    if-eqz v0, :cond_10

    const/16 p0, 0x1e

    return p0

    :cond_10
    instance-of p0, p0, Lx1/f;

    if-eqz p0, :cond_11

    const/16 p0, 0x1f

    return p0

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public writeAnnotation(Lv1/a;Z)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v2}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v2

    invoke-virtual {p1}, Lv1/a;->B()Lx1/e0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lx1/e0;)I

    move-result v4

    const-string v5, " // "

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  type_idx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-virtual {p1}, Lv1/a;->B()Lx1/e0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lx1/e0;)I

    move-result v2

    invoke-interface {v3, v2}, Lb2/q;->h(I)I

    invoke-virtual {p1}, Lv1/a;->A()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {v3, v2}, Lb2/q;->h(I)I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv1/e;

    invoke-virtual {v3}, Lv1/e;->d()Lx1/d0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lx1/d0;)I

    move-result v6

    invoke-virtual {v3}, Lv1/e;->f()Lx1/a;

    move-result-object v3

    if-eqz p2, :cond_3

    iget-object v7, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  elements["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lb2/a;->d(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    name_idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {v4, v6}, Lb2/q;->h(I)I

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lx1/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lx1/a;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {p1}, Lb2/a;->i()V

    :cond_6
    return-void
.end method

.method public writeArray(Lx1/d;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lx1/d;->n()Lx1/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {v2, v1}, Lb2/q;->h(I)I

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lx1/d$a;->get(I)Lx1/a;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lx1/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lx1/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {p1}, Lb2/a;->i()V

    :cond_4
    return-void
.end method

.method public writeConstant(Lx1/a;)V
    .locals 4

    invoke-static {p1}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lx1/f;

    invoke-virtual {p1}, Lx1/t;->z()I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    invoke-interface {v1, p1}, Lb2/q;->writeByte(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {p1, v0}, Lb2/q;->writeByte(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {v2, v0}, Lb2/q;->writeByte(I)V

    check-cast p1, Lx1/c;

    invoke-virtual {p1}, Lx1/c;->n()Lv1/a;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lv1/a;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-interface {v2, v0}, Lb2/q;->writeByte(I)V

    check-cast p1, Lx1/d;

    invoke-virtual {p0, p1, v1}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lx1/d;Z)V

    goto/16 :goto_0

    :pswitch_4
    check-cast p1, Lx1/m;

    invoke-virtual {p1}, Lx1/m;->x()Lx1/n;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lx1/n;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    check-cast p1, Lx1/z;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lx1/e;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    check-cast p1, Lx1/n;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lx1/n;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    check-cast p1, Lx1/e0;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lx1/e0;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    check-cast p1, Lx1/d0;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lx1/d0;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/android/dx/dex/file/MethodHandlesSection;

    move-result-object v1

    check-cast p1, Lx1/y;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/MethodHandlesSection;->a(Lx1/y;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->g()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object v1

    check-cast p1, Lx1/b0;

    invoke-virtual {p1}, Lx1/b0;->n()Ly1/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/ProtoIdsSection;->indexOf(Ly1/a;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :cond_0
    check-cast p1, Lx1/l;

    invoke-virtual {p1}, Lx1/u;->A()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-static {p1, v0, v1, v2}, Lk1/k;->e(Ll1/c;IJ)V

    goto :goto_0

    :cond_1
    check-cast p1, Lx1/o;

    invoke-virtual {p1}, Lx1/t;->A()J

    move-result-wide v1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    iget-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-static {p1, v0, v1, v2}, Lk1/k;->e(Ll1/c;IJ)V

    goto :goto_0

    :cond_2
    check-cast p1, Lx1/v;

    invoke-virtual {p1}, Lx1/v;->A()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-static {p1, v0, v1, v2}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :cond_3
    check-cast p1, Lx1/v;

    invoke-virtual {p1}, Lx1/v;->A()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lb2/a;

    invoke-static {p1, v0, v1, v2}, Lk1/k;->f(Ll1/c;IJ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
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
