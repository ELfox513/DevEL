.class public Lu1/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lu1/d;


# direct methods
.method public constructor <init>(Lu1/d;)V
    .locals 0

    iput-object p1, p0, Lu1/d$f;->a:Lu1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu1/d;Lu1/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lu1/d$f;-><init>(Lu1/d;)V

    return-void
.end method


# virtual methods
.method public a([Lt1/f;Lt1/f;)V
    .locals 2

    invoke-virtual {p2}, Lt1/f;->m()I

    move-result p1

    iget-object v0, p0, Lu1/d$f;->a:Lu1/d;

    invoke-static {v0}, Lu1/d;->d(Lu1/d;)Lu1/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu1/c;->q(I)I

    move-result p1

    invoke-virtual {p2}, Lt1/f;->u()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lu1/d;->a(ZI)V

    iget-object v0, p0, Lu1/d$f;->a:Lu1/d;

    invoke-static {v0}, Lu1/d;->b(Lu1/d;)[Lt1/f;

    move-result-object v0

    iget-object v1, p0, Lu1/d$f;->a:Lu1/d;

    invoke-static {v1}, Lu1/d;->c(Lu1/d;)I

    move-result v1

    invoke-virtual {p2, p1}, Lt1/f;->C(I)Lt1/f;

    move-result-object p1

    aput-object p1, v0, v1

    return-void
.end method
