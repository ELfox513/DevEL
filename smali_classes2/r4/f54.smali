.class public final synthetic Lr4/f54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/g04;


# static fields
.field public static final a:Lr4/g04;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/f54;

    invoke-direct {v0}, Lr4/f54;-><init>()V

    sput-object v0, Lr4/f54;->a:Lr4/g04;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/util/Map;)[Lr4/a04;
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Lr4/a04;

    new-instance p2, Lr4/g54;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lr4/g54;-><init>(I)V

    aput-object p2, p1, v0

    return-object p1
.end method
