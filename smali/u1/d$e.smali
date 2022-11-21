.class public Lu1/d$e;
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
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lu1/d;


# direct methods
.method public constructor <init>(Lu1/d;)V
    .locals 0

    iput-object p1, p0, Lu1/d$e;->a:Lu1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu1/d;Lu1/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lu1/d$e;-><init>(Lu1/d;)V

    return-void
.end method


# virtual methods
.method public a([Lt1/f;Lt1/f;)V
    .locals 4

    invoke-virtual {p2}, Lt1/f;->m()I

    move-result p1

    invoke-virtual {p2}, Lt1/f;->w()S

    move-result v0

    iget-object v1, p0, Lu1/d$e;->a:Lu1/d;

    invoke-static {v1}, Lu1/d;->b(Lu1/d;)[Lt1/f;

    move-result-object v1

    iget-object v2, p0, Lu1/d$e;->a:Lu1/d;

    invoke-static {v2}, Lu1/d;->c(Lu1/d;)I

    move-result v2

    iget-object v3, p0, Lu1/d$e;->a:Lu1/d;

    invoke-static {v3}, Lu1/d;->d(Lu1/d;)Lu1/c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lu1/c;->q(I)I

    move-result p1

    iget-object v3, p0, Lu1/d$e;->a:Lu1/d;

    invoke-static {v3}, Lu1/d;->d(Lu1/d;)Lu1/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lu1/c;->s(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lt1/f;->D(II)Lt1/f;

    move-result-object p1

    aput-object p1, v1, v2

    return-void
.end method
