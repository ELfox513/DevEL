.class public final Lo7/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/m1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/m1;->a(Lo7/h;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo7/h;


# direct methods
.method public constructor <init>(Lo7/h;)V
    .locals 0

    iput-object p1, p0, Lo7/m1$a;->a:Lo7/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    iget-object v0, p0, Lo7/m1$a;->a:Lo7/h;

    invoke-virtual {v0, p1}, Lo7/h;->e(I)B

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lo7/m1$a;->a:Lo7/h;

    invoke-virtual {v0}, Lo7/h;->size()I

    move-result v0

    return v0
.end method
