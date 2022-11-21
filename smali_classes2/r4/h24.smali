.class public final Lr4/h24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/h24;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:[Lr4/e5;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/g14;->a:Lr4/d3;

    sput-object v0, Lr4/h24;->d:Lr4/d3;

    return-void
.end method

.method public varargs constructor <init>([Lr4/e5;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h24;->b:[Lr4/e5;

    const/4 v0, 0x1

    iput v0, p0, Lr4/h24;->a:I

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v1, v1, Lr4/e5;->c:Ljava/lang/String;

    invoke-static {v1}, Lr4/h24;->c(Ljava/lang/String;)Ljava/lang/String;

    aget-object p1, p1, v0

    iget p1, p1, Lr4/e5;->e:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "und"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a(I)Lr4/e5;
    .locals 1

    iget-object v0, p0, Lr4/h24;->b:[Lr4/e5;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Lr4/e5;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    iget-object v1, p0, Lr4/h24;->b:[Lr4/e5;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

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

    const-class v2, Lr4/h24;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/h24;

    iget-object v2, p0, Lr4/h24;->b:[Lr4/e5;

    iget-object p1, p1, Lr4/h24;->b:[Lr4/e5;

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

    iget v0, p0, Lr4/h24;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/h24;->b:[Lr4/e5;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lr4/h24;->c:I

    :cond_0
    return v0
.end method
