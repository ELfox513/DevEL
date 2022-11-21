.class public Lu3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/e$a$a;
    }
.end annotation


# static fields
.field public static final c:Lu3/e$a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field public final a:Lv3/o;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final b:Landroid/os/Looper;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu3/e$a$a;

    invoke-direct {v0}, Lu3/e$a$a;-><init>()V

    invoke-virtual {v0}, Lu3/e$a$a;->a()Lu3/e$a;

    move-result-object v0

    sput-object v0, Lu3/e$a;->c:Lu3/e$a;

    return-void
.end method

.method public constructor <init>(Lv3/o;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/e$a;->a:Lv3/o;

    iput-object p3, p0, Lu3/e$a;->b:Landroid/os/Looper;

    return-void
.end method

.method public synthetic constructor <init>(Lv3/o;Landroid/accounts/Account;Landroid/os/Looper;Lu3/p;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lu3/e$a;-><init>(Lv3/o;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
