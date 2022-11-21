.class public final Lp2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lp2/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp2/f;

    invoke-direct {v0}, Lp2/f;-><init>()V

    sput-object v0, Lp2/f$a;->a:Lp2/f;

    return-void
.end method

.method public static synthetic a()Lp2/f;
    .locals 1

    sget-object v0, Lp2/f$a;->a:Lp2/f;

    return-object v0
.end method
