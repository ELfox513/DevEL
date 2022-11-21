.class public final Lk7/m$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lo7/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lo7/u1$b;->v:Lo7/u1$b;

    sget-object v1, Lo7/u1$b;->p:Lo7/u1$b;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lo7/l0;->d(Lo7/u1$b;Ljava/lang/Object;Lo7/u1$b;Ljava/lang/Object;)Lo7/l0;

    move-result-object v0

    sput-object v0, Lk7/m$c;->a:Lo7/l0;

    return-void
.end method
