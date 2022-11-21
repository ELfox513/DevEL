.class public final Lo7/h$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Lo7/k;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lo7/h$h;->b:[B

    invoke-static {p1}, Lo7/k;->d0([B)Lo7/k;

    move-result-object p1

    iput-object p1, p0, Lo7/h$h;->a:Lo7/k;

    return-void
.end method

.method public synthetic constructor <init>(ILo7/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lo7/h$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lo7/h;
    .locals 2

    iget-object v0, p0, Lo7/h$h;->a:Lo7/k;

    invoke-virtual {v0}, Lo7/k;->c()V

    new-instance v0, Lo7/h$j;

    iget-object v1, p0, Lo7/h$h;->b:[B

    invoke-direct {v0, v1}, Lo7/h$j;-><init>([B)V

    return-object v0
.end method

.method public b()Lo7/k;
    .locals 1

    iget-object v0, p0, Lo7/h$h;->a:Lo7/k;

    return-object v0
.end method
