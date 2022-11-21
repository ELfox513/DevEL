.class public final Lv3/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv3/b1;

.field public final b:I

.field public final c:Lu3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/b1;ILu3/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b1;",
            "I",
            "Lu3/e<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/o0;->a:Lv3/b1;

    iput p2, p0, Lv3/o0;->b:I

    iput-object p3, p0, Lv3/o0;->c:Lu3/e;

    return-void
.end method
