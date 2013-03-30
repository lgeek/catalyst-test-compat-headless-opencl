# <cosmin at linux-geek d0t org>

pkgname=catalyst-test-compat-headless-opencl
pkgver=7
pkgrel=1
pkgdesc="Patches the proprietary Catalyst driver to allow running OpenCL applications on AMD graphics cards without an active X server"
url="https://github.com/lgeek/catalyst-test-compat-headless-opencl"
arch=('x86_64' 'i686')
license=('BSD')
depends=('catalyst-test-compat=13.3' 'systemd' 'amdapp-sdk')
install='catalyst-test-compat-headless-opencl.install'
source=("catalyst-headless-setup.service"
        "catalyst-headless-setup.sh"
        "catalyst-test-compat-headless-opencl.patch")
md5sums=('f8329a77326b45362ee4d331a904b2e5'
         'c903def517b02d6b3abe2ba628d10bfd'
         '2b13a030db71452cb41ff838e2a5f97d')

package() {
  install -d "$pkgdir/usr/lib/systemd/system/"
  install -m 644 catalyst-headless-setup.service "$pkgdir/usr/lib/systemd/system/"
  install -d "$pkgdir/usr/share/ati/build_mod/"
  install -m 644 catalyst-test-compat-headless-opencl.patch "$pkgdir/usr/share/ati/build_mod/"
  install -d "$pkgdir/usr/bin/"
  install -m 755 catalyst-headless-setup.sh "$pkgdir/usr/bin/"
}
