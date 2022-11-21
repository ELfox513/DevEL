.class public final Lm1/a;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lx1/a;

.field public final c:I


# direct methods
.method public constructor <init>(Lx1/a;I)V
    .locals 1

    const-string v0, "AnnotationDefault"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lm1/a;->b:Lx1/a;

    iput p2, p0, Lm1/a;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lx1/a;
    .locals 1

    iget-object v0, p0, Lm1/a;->b:Lx1/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lm1/a;->c:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method
