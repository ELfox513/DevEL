.class public abstract Lm1/w;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lv1/d;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv1/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lm1/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lb2/o;->isMutable()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    iput-object p2, p0, Lm1/w;->b:Lv1/d;

    iput p3, p0, Lm1/w;->c:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb2/p;

    const-string p2, "parameterAnnotations.isMutable()"

    invoke-direct {p1, p2}, Lb2/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "parameterAnnotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lv1/d;
    .locals 1

    iget-object v0, p0, Lm1/w;->b:Lv1/d;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lm1/w;->c:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method
