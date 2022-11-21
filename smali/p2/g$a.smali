.class public final Lp2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lp2/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp2/g;

    invoke-direct {v0}, Lp2/g;-><init>()V

    sput-object v0, Lp2/g$a;->a:Lp2/g;

    return-void
.end method

.method public static synthetic a()Lp2/g;
    .locals 1

    sget-object v0, Lp2/g$a;->a:Lp2/g;

    return-object v0
.end method
