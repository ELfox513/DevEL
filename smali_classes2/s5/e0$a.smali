.class public Ls5/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Lo6/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lo6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lo6/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/e0$a;->a:Ljava/util/Set;

    iput-object p2, p0, Ls5/e0$a;->b:Lo6/c;

    return-void
.end method
