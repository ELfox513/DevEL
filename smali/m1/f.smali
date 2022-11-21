.class public final Lm1/f;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lx1/e0;

.field public final c:Lx1/a0;


# direct methods
.method public constructor <init>(Lx1/e0;Lx1/a0;)V
    .locals 1

    const-string v0, "EnclosingMethod"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lm1/f;->b:Lx1/e0;

    iput-object p2, p0, Lm1/f;->c:Lx1/a0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lm1/f;->b:Lx1/e0;

    return-object v0
.end method

.method public b()Lx1/a0;
    .locals 1

    iget-object v0, p0, Lm1/f;->c:Lx1/a0;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
