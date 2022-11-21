.class public final Lk7/n$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/a0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lo7/a0$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk7/n$c$b;

    invoke-direct {v0}, Lk7/n$c$b;-><init>()V

    sput-object v0, Lk7/n$c$b;->a:Lo7/a0$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    invoke-static {p1}, Lk7/n$c;->c(I)Lk7/n$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
