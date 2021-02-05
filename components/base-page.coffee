import h from '@macrostrat/hyper'
import {Helmet} from 'react-helmet'
import {Nav, ActiveLink} from "./nav"
import Image from "next/image"
import Link from "next/link"
import Head from 'next/head'
import {navLinks} from "./page-map"

import "./main.styl"

BasePage = (props)->
  {children, rest...} = props
  h 'div.page', rest, [
    <Head>
      <meta charSet="utf-8" />
      <title>Mapboard GIS</title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&display=swap" rel="stylesheet" /> 
    </Head>
    h 'div.underlay'
    h 'div.wrap', [
      <header>
        <ActiveLink href="/">
          <a className="page-title-link"><h1 className="page-title">Mapboard <span class="dimmer">GIS</span></h1></a>
        </ActiveLink>
        <div className="header-image">
          <Link href="/">
            <img className="mapboard-logo" src="/mapboard-icon.png" width={140} height={140} />
          </Link>
        </div>
        <Nav links={navLinks} />
      </header>
      h 'div.main', [
        children
      ]
      <footer>
        <p>
          <strong>Mapboard GIS</strong> was created by <a href="https://davenquinn.com">Daven Quinn</a>, 2018—2021
        </p>
      </footer>
    ]
  ]

export default BasePage