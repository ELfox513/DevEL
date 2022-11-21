.class public final Lk7/m$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lo7/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lo7/u1$b;->v:Lo7/u1$b;

    const-string v1, ""

    invoke-static {v0, v1, v0, v1}, Lo7/l0;->d(Lo7/u1$b;Ljava/lang/Object;Lo7/u1$b;Ljava/lang/Object;)Lo7/l0;

    move-result-object v0

    sput-object v0, Lk7/m$d;->a:Lo7/l0;

    return-void
.end method
