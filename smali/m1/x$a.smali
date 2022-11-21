.class public Lm1/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lx1/e0;

.field public final b:Lx1/e0;

.field public final c:Lx1/d0;

.field public final d:I


# direct methods
.method public constructor <init>(Lx1/e0;Lx1/e0;Lx1/d0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lm1/x$a;->a:Lx1/e0;

    iput-object p2, p0, Lm1/x$a;->b:Lx1/e0;

    iput-object p3, p0, Lm1/x$a;->c:Lx1/d0;

    iput p4, p0, Lm1/x$a;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "innerClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lm1/x$a;->d:I

    return v0
.end method

.method public b()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lm1/x$a;->a:Lx1/e0;

    return-object v0
.end method

.method public c()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lm1/x$a;->c:Lx1/d0;

    return-object v0
.end method

.method public d()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lm1/x$a;->b:Lx1/e0;

    return-object v0
.end method
