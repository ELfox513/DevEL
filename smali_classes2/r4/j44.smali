.class public final Lr4/j44;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr4/j44;

.field public static final e:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/j44;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:[Lr4/h24;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/j44;

    const/4 v1, 0x0

    new-array v1, v1, [Lr4/h24;

    invoke-direct {v0, v1}, Lr4/j44;-><init>([Lr4/h24;)V

    sput-object v0, Lr4/j44;->d:Lr4/j44;

    sget-object v0, Lr4/i34;->a:Lr4/d3;

    sput-object v0, Lr4/j44;->e:Lr4/d3;

    return-void
.end method

.method public varargs constructor <init>([Lr4/h24;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j44;->b:[Lr4/h24;

    array-length p1, p1

    iput p1, p0, Lr4/j44;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Lr4/h24;
    .locals 1

    iget-object v0, p0, Lr4/j44;->b:[Lr4/h24;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Lr4/h24;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lr4/j44;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lr4/j44;->b:[Lr4/h24;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lr4/j44;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/j44;

    iget v2, p0, Lr4/j44;->a:I

    iget v3, p1, Lr4/j44;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lr4/j44;->b:[Lr4/h24;

    iget-object p1, p1, Lr4/j44;->b:[Lr4/h24;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lr4/j44;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/j44;->b:[Lr4/h24;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lr4/j44;->c:I

    :cond_0
    return v0
.end method
