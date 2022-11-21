.class public final Lm1/y;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lb2/d;

.field public final c:Lx1/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb2/d;IILx1/b;)V
    .locals 0

    add-int/2addr p4, p3

    invoke-virtual {p2, p3, p4}, Lb2/d;->r(II)Lb2/d;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lm1/y;-><init>(Ljava/lang/String;Lb2/d;Lx1/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lb2/d;Lx1/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lm1/u;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lm1/y;->b:Lb2/d;

    iput-object p3, p0, Lm1/y;->c:Lx1/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()I
    .locals 1

    iget-object v0, p0, Lm1/y;->b:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->q()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method
