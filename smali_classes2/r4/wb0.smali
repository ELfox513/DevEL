.class public final Lr4/wb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/e;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:I

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Landroid/location/Location;

.field public final f:I

.field public final g:Z

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wb0;->a:Ljava/util/Date;

    iput p2, p0, Lr4/wb0;->b:I

    iput-object p3, p0, Lr4/wb0;->c:Ljava/util/Set;

    iput-object p4, p0, Lr4/wb0;->e:Landroid/location/Location;

    iput-boolean p5, p0, Lr4/wb0;->d:Z

    iput p6, p0, Lr4/wb0;->f:I

    iput-boolean p7, p0, Lr4/wb0;->g:Z

    iput-object p9, p0, Lr4/wb0;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lr4/wb0;->f:I

    return v0
.end method

.method public final e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lr4/wb0;->g:Z

    return v0
.end method

.method public final f()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/wb0;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lr4/wb0;->d:Z

    return v0
.end method

.method public final h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/wb0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final j()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lr4/wb0;->e:Landroid/location/Location;

    return-object v0
.end method

.method public final k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lr4/wb0;->b:I

    return v0
.end method
