.class public Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$LongAdapter;,
        Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$IntegerAdapter;,
        Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$FloatAdapter;,
        Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DoubleAdapter;,
        Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;,
        Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;
    }
.end annotation


# static fields
.field public static final c:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->c:Lcom/badlogic/gdx/utils/ObjectMap;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$1;

    const-string v3, "constant"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$2;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$3;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$4;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$5;

    const-string v3, "gaussian"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$6;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$7;

    const-string v3, "triangular"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$8;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$9;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$10;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$11;

    const-string v3, "uniform"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$12;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$13;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$13;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;

    new-instance v2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$14;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$14;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->c:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->add(Ljava/lang/Class;Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(I[I)Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;
    .locals 0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->b(I[I)Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(I[I)Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " arguments in triangular distribution; expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v0, 0x1

    aget v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    move-object v3, v0

    move v0, p0

    move-object p0, v3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " or "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p1, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final add(Ljava/lang/Class;Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, p2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toDistribution(Ljava/lang/String;Ljava/lang/Class;)Lcom/badlogic/gdx/ai/utils/random/Distribution;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/ai/utils/random/Distribution;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", \t\u000c"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p2, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/Distribution;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' of type \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;

    const-string p2, "Missing ditribution type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public toString(Lcom/badlogic/gdx/ai/utils/random/Distribution;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->toParameters(Lcom/badlogic/gdx/ai/utils/random/Distribution;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->a:Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
