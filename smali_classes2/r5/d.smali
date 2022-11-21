.class public final Lr5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq5/a$b;

.field public final c:Lf5/a;

.field public final d:Lr5/c;


# direct methods
.method public constructor <init>(Lf5/a;Lq5/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr5/d;->b:Lq5/a$b;

    iput-object p1, p0, Lr5/d;->c:Lf5/a;

    new-instance p2, Lr5/c;

    invoke-direct {p2, p0}, Lr5/c;-><init>(Lr5/d;)V

    iput-object p2, p0, Lr5/d;->d:Lr5/c;

    invoke-virtual {p1, p2}, Lf5/a;->q(Lf5/a$a;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lr5/d;->a:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic a(Lr5/d;)Lq5/a$b;
    .locals 0

    iget-object p0, p0, Lr5/d;->b:Lq5/a$b;

    return-object p0
.end method
