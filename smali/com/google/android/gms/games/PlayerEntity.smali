.class public final Lcom/google/android/gms/games/PlayerEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.source "SourceFile"

# interfaces
.implements Lh4/i;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/PlayerEntity$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/PlayerEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Z

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Landroid/net/Uri;

.field public final E:Ljava/lang/String;

.field public final F:Landroid/net/Uri;

.field public final G:Ljava/lang/String;

.field public H:J

.field public final I:Lh4/w;

.field public final J:Lh4/n;

.field public d:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public final p:Landroid/net/Uri;

.field public final q:Landroid/net/Uri;

.field public final r:J

.field public final s:I

.field public final t:J

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ll4/a;

.field public final y:Lh4/k;

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity$a;

    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerEntity$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/a;Lh4/k;ZZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLh4/w;Lh4/n;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->d:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->k:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->p:Landroid/net/Uri;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->u:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->q:Landroid/net/Uri;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->v:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/games/PlayerEntity;->r:J

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/games/PlayerEntity;->s:I

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/gms/games/PlayerEntity;->t:J

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->w:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/gms/games/PlayerEntity;->z:Z

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->x:Ll4/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->y:Lh4/k;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/android/gms/games/PlayerEntity;->A:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->B:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->C:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->D:Landroid/net/Uri;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->E:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->F:Landroid/net/Uri;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->G:Ljava/lang/String;

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/google/android/gms/games/PlayerEntity;->H:J

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->I:Lh4/w;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->J:Lh4/n;

    return-void
.end method

.method public static c1(Lh4/i;)I
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lh4/i;->U0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->t()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->s()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->O()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->l0()Lh4/k;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->i()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->y()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->R()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->B0()Lh4/l;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/i;->Z()Lh4/b;

    move-result-object p0

    const/16 v1, 0xe

    aput-object p0, v0, v1

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static d1(Lh4/i;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lh4/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lh4/i;

    invoke-interface {p1}, Lh4/i;->U0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->U0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->k()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->t()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->t()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->s()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->s()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->O()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->O()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->l0()Lh4/k;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->l0()Lh4/k;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->y()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->y()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->R()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->R()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->Z()Lh4/b;

    move-result-object v2

    invoke-interface {p0}, Lh4/i;->Z()Lh4/b;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/i;->B0()Lh4/l;

    move-result-object p1

    invoke-interface {p0}, Lh4/i;->B0()Lh4/l;

    move-result-object p0

    invoke-static {p1, p0}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static synthetic e1(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;->a1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f1(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->X0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static g1(Lh4/i;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lx3/o;->c(Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->U0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerId"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayName"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "HasDebugAccess"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->t()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "IconImageUri"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconImageUrl"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->s()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "HiResImageUri"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HiResImageUrl"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->O()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RetrievedTimestamp"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->l0()Lh4/k;

    move-result-object v1

    const-string v2, "LevelInfo"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GamerTag"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->y()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "BannerImageLandscapeUri"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BannerImageLandscapeUrl"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->R()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "BannerImagePortraitUri"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BannerImagePortraitUrl"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->Z()Lh4/b;

    move-result-object v1

    const-string v2, "CurrentPlayerInfo"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalUnlockedAchievement"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/i;->B0()Lh4/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lh4/i;->B0()Lh4/l;

    move-result-object p0

    const-string v1, "RelationshipInfo"

    invoke-virtual {v0, v1, p0}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    :cond_0
    invoke-virtual {v0}, Lx3/o$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h1()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->Y0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final B0()Lh4/l;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->I:Lh4/w;

    return-object v0
.end method

.method public final O()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->r:J

    return-wide v0
.end method

.method public final R()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->F:Landroid/net/Uri;

    return-object v0
.end method

.method public final U0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final Z()Lh4/b;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->J:Lh4/n;

    return-object v0
.end method

.method public final b1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->t:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->d1(Lh4/i;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getBannerImageLandscapeUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final getBannerImagePortraitUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final getHiResImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->c1(Lh4/i;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->A:Z

    return v0
.end method

.method public final l0()Lh4/k;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->y:Lh4/k;

    return-object v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->H:J

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public final t()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->p:Landroid/net/Uri;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->g1(Lh4/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->Z0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->U0()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->t()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->s()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->O()J

    move-result-wide v4

    invoke-static {p1, v1, v4, v5}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/games/PlayerEntity;->s:I

    invoke-static {p1, v1, v2}, Ly3/c;->l(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->b1()J

    move-result-wide v4

    invoke-static {p1, v1, v4, v5}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->x:Ll4/a;

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->l0()Lh4/k;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/games/PlayerEntity;->z:Z

    invoke-static {p1, v1, v2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/google/android/gms/games/PlayerEntity;->A:Z

    invoke-static {p1, v1, v2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->B:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->C:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->y()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->R()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x1d

    iget-wide v4, p0, Lcom/google/android/gms/games/PlayerEntity;->H:J

    invoke-static {p1, v1, v4, v5}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->B0()Lh4/l;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->Z()Lh4/b;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->p:Landroid/net/Uri;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->q:Landroid/net/Uri;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public final y()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->D:Landroid/net/Uri;

    return-object v0
.end method
